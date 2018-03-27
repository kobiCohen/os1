
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    return -1;
  return 0;
}

int
main(void) {
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	57                   	push   %edi
       e:	56                   	push   %esi
       f:	53                   	push   %ebx
      10:	51                   	push   %ecx
      11:	81 ec a8 00 00 00    	sub    $0xa8,%esp
   static char buf[161];
   int fd;

   // Ensure that three file descriptors are open.
   while((fd = open("console", O_RDWR)) >= 0){
      17:	eb 09                	jmp    22 <main+0x22>
      if(fd >= 3){
      19:	83 f8 02             	cmp    $0x2,%eax
      1c:	0f 8f 76 01 00 00    	jg     198 <main+0x198>
main(void) {
   static char buf[161];
   int fd;

   // Ensure that three file descriptors are open.
   while((fd = open("console", O_RDWR)) >= 0){
      22:	83 ec 08             	sub    $0x8,%esp
      25:	6a 02                	push   $0x2
      27:	68 d7 19 00 00       	push   $0x19d7
      2c:	e8 71 14 00 00       	call   14a2 <open>
      31:	83 c4 10             	add    $0x10,%esp
      34:	85 c0                	test   %eax,%eax
      36:	79 e1                	jns    19 <main+0x19>
      }

      fix_buffer(buf);

      if(flag == 1) 
         setVariable1(variable, value);
      38:	8d b5 48 ff ff ff    	lea    -0xb8(%ebp),%esi
      3e:	66 90                	xchg   %ax,%ax
         break;
      }
   }

   // Read and run input commands.
   while(getcmd(buf, sizeof(buf)) >= 0) {
      40:	83 ec 08             	sub    $0x8,%esp
      43:	68 a1 00 00 00       	push   $0xa1
      48:	68 a0 21 00 00       	push   $0x21a0
      4d:	e8 fe 07 00 00       	call   850 <getcmd>
      52:	83 c4 10             	add    $0x10,%esp
      55:	85 c0                	test   %eax,%eax
      57:	0f 88 59 01 00 00    	js     1b6 <main+0x1b6>

      if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' ') {
      5d:	0f b6 0d a0 21 00 00 	movzbl 0x21a0,%ecx
      64:	80 f9 63             	cmp    $0x63,%cl
      67:	0f 84 b0 00 00 00    	je     11d <main+0x11d>
    return -1;
  return 0;
}

int
main(void) {
      6d:	31 c0                	xor    %eax,%eax
      6f:	31 db                	xor    %ebx,%ebx
      71:	31 ff                	xor    %edi,%edi
      73:	eb 1f                	jmp    94 <main+0x94>
      75:	8d 76 00             	lea    0x0(%esi),%esi
      for(int i = 0; i < sizeof(buf); i++) {
         if(buf[i] == '=') {
            flag = 1;
            index = i;
         }
         if(flag == 0)
      78:	85 db                	test   %ebx,%ebx
      7a:	0f 85 88 00 00 00    	jne    108 <main+0x108>
            variable[i] = buf[i];
      80:	88 0c 30             	mov    %cl,(%eax,%esi,1)

      char value[128];
      char variable[32];
      int index = 0, flag = 0;

      for(int i = 0; i < sizeof(buf); i++) {
      83:	83 c0 01             	add    $0x1,%eax
      86:	3d a1 00 00 00       	cmp    $0xa1,%eax
      8b:	74 1d                	je     aa <main+0xaa>
      8d:	0f b6 88 a0 21 00 00 	movzbl 0x21a0(%eax),%ecx
         if(buf[i] == '=') {
      94:	80 f9 3d             	cmp    $0x3d,%cl
      97:	75 df                	jne    78 <main+0x78>
      99:	89 c7                	mov    %eax,%edi

      char value[128];
      char variable[32];
      int index = 0, flag = 0;

      for(int i = 0; i < sizeof(buf); i++) {
      9b:	83 c0 01             	add    $0x1,%eax
         if(buf[i] == '=') {
            flag = 1;
      9e:	bb 01 00 00 00       	mov    $0x1,%ebx

      char value[128];
      char variable[32];
      int index = 0, flag = 0;

      for(int i = 0; i < sizeof(buf); i++) {
      a3:	3d a1 00 00 00       	cmp    $0xa1,%eax
      a8:	75 e3                	jne    8d <main+0x8d>
            variable[i] = buf[i];
         if(flag == 1 && buf[i] != '=')   
            value[i - index - 1] = buf[i];
      }

      fix_buffer(buf);
      aa:	83 ec 0c             	sub    $0xc,%esp
      ad:	68 a0 21 00 00       	push   $0x21a0
      b2:	e8 09 04 00 00       	call   4c0 <fix_buffer>

      if(flag == 1) 
      b7:	83 c4 10             	add    $0x10,%esp
      ba:	83 fb 01             	cmp    $0x1,%ebx
      bd:	0f 84 bd 00 00 00    	je     180 <main+0x180>
         setVariable1(variable, value);

      push_history(buf);
      c3:	83 ec 0c             	sub    $0xc,%esp
      c6:	68 a0 21 00 00       	push   $0x21a0
      cb:	e8 b0 05 00 00       	call   680 <push_history>

      int history_flag = history_support(buf);
      d0:	c7 04 24 a0 21 00 00 	movl   $0x21a0,(%esp)
      d7:	e8 c4 06 00 00       	call   7a0 <history_support>
      dc:	89 c7                	mov    %eax,%edi
int
fork1(void)
{
  int pid;

  pid = fork();
      de:	e8 77 13 00 00       	call   145a <fork>
  if(pid == -1)
      e3:	83 c4 10             	add    $0x10,%esp
      e6:	83 f8 ff             	cmp    $0xffffffff,%eax
      e9:	0f 84 ba 00 00 00    	je     1a9 <main+0x1a9>

      push_history(buf);

      int history_flag = history_support(buf);

      if(fork1() == 0) 
      ef:	85 c0                	test   %eax,%eax
      f1:	75 08                	jne    fb <main+0xfb>
         if(flag == 0 && history_flag == 0)
      f3:	09 df                	or     %ebx,%edi
      f5:	0f 84 c0 00 00 00    	je     1bb <main+0x1bb>
            runcmd(parsecmd(buf));
      wait();
      fb:	e8 6a 13 00 00       	call   146a <wait>
     100:	e9 3b ff ff ff       	jmp    40 <main+0x40>
     105:	8d 76 00             	lea    0x0(%esi),%esi
            index = i;
         }
         if(flag == 0)
            variable[i] = buf[i];
         if(flag == 1 && buf[i] != '=')   
            value[i - index - 1] = buf[i];
     108:	89 c3                	mov    %eax,%ebx
     10a:	29 fb                	sub    %edi,%ebx
     10c:	88 8c 1d 67 ff ff ff 	mov    %cl,-0x99(%ebp,%ebx,1)
     113:	bb 01 00 00 00       	mov    $0x1,%ebx
     118:	e9 66 ff ff ff       	jmp    83 <main+0x83>
   }

   // Read and run input commands.
   while(getcmd(buf, sizeof(buf)) >= 0) {

      if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' ') {
     11d:	80 3d a1 21 00 00 64 	cmpb   $0x64,0x21a1
     124:	0f 85 43 ff ff ff    	jne    6d <main+0x6d>
     12a:	80 3d a2 21 00 00 20 	cmpb   $0x20,0x21a2
     131:	0f 85 36 ff ff ff    	jne    6d <main+0x6d>
         // Chdir must be called by the parent, not the child.
         buf[strlen(buf)-1] = 0;  // chop \n
     137:	83 ec 0c             	sub    $0xc,%esp
     13a:	68 a0 21 00 00       	push   $0x21a0
     13f:	e8 5c 11 00 00       	call   12a0 <strlen>
         if(chdir(buf+3) < 0)
     144:	c7 04 24 a3 21 00 00 	movl   $0x21a3,(%esp)
   // Read and run input commands.
   while(getcmd(buf, sizeof(buf)) >= 0) {

      if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' ') {
         // Chdir must be called by the parent, not the child.
         buf[strlen(buf)-1] = 0;  // chop \n
     14b:	c6 80 9f 21 00 00 00 	movb   $0x0,0x219f(%eax)
         if(chdir(buf+3) < 0)
     152:	e8 7b 13 00 00       	call   14d2 <chdir>
     157:	83 c4 10             	add    $0x10,%esp
     15a:	85 c0                	test   %eax,%eax
     15c:	0f 89 de fe ff ff    	jns    40 <main+0x40>
            printf(2, "cannot cd %s\n", buf + 3);
     162:	50                   	push   %eax
     163:	68 a3 21 00 00       	push   $0x21a3
     168:	68 df 19 00 00       	push   $0x19df
     16d:	6a 02                	push   $0x2
     16f:	e8 4c 14 00 00       	call   15c0 <printf>
     174:	83 c4 10             	add    $0x10,%esp
     177:	e9 c4 fe ff ff       	jmp    40 <main+0x40>
     17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      }

      fix_buffer(buf);

      if(flag == 1) 
         setVariable1(variable, value);
     180:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
     186:	83 ec 08             	sub    $0x8,%esp
     189:	50                   	push   %eax
     18a:	56                   	push   %esi
     18b:	e8 a0 02 00 00       	call   430 <setVariable1>
     190:	83 c4 10             	add    $0x10,%esp
     193:	e9 2b ff ff ff       	jmp    c3 <main+0xc3>
   int fd;

   // Ensure that three file descriptors are open.
   while((fd = open("console", O_RDWR)) >= 0){
      if(fd >= 3){
         close(fd);
     198:	83 ec 0c             	sub    $0xc,%esp
     19b:	50                   	push   %eax
     19c:	e8 e9 12 00 00       	call   148a <close>
         break;
     1a1:	83 c4 10             	add    $0x10,%esp
     1a4:	e9 8f fe ff ff       	jmp    38 <main+0x38>
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     1a9:	83 ec 0c             	sub    $0xc,%esp
     1ac:	68 60 19 00 00       	push   $0x1960
     1b1:	e8 ea 06 00 00       	call   8a0 <panic>
      if(fork1() == 0) 
         if(flag == 0 && history_flag == 0)
            runcmd(parsecmd(buf));
      wait();
      }
   exit();
     1b6:	e8 a7 12 00 00       	call   1462 <exit>

      int history_flag = history_support(buf);

      if(fork1() == 0) 
         if(flag == 0 && history_flag == 0)
            runcmd(parsecmd(buf));
     1bb:	83 ec 0c             	sub    $0xc,%esp
     1be:	68 a0 21 00 00       	push   $0x21a0
     1c3:	e8 e8 0f 00 00       	call   11b0 <parsecmd>
     1c8:	89 04 24             	mov    %eax,(%esp)
     1cb:	e8 f0 06 00 00       	call   8c0 <runcmd>

000001d0 <remVariable1>:

struct shortcut1 shortcuts1[MAX_VARIABLES];
int num_of_shortcuts1 = 0;

int 
remVariable1(char* variable) {
     1d0:	55                   	push   %ebp
     1d1:	89 e5                	mov    %esp,%ebp
     1d3:	57                   	push   %edi
     1d4:	56                   	push   %esi
     1d5:	53                   	push   %ebx
     1d6:	83 ec 10             	sub    $0x10,%esp
  int index = 0;
  int flag = 1;
  for(int i = 0; i < num_of_shortcuts1; i++) {
     1d9:	a1 80 21 00 00       	mov    0x2180,%eax
     1de:	85 c0                	test   %eax,%eax
     1e0:	89 45 e8             	mov    %eax,-0x18(%ebp)
     1e3:	0f 8e 22 01 00 00    	jle    30b <remVariable1+0x13b>
     1e9:	c7 45 ec 60 2a 00 00 	movl   $0x2a60,-0x14(%ebp)
     1f0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     1f7:	b9 01 00 00 00       	mov    $0x1,%ecx
     1fc:	31 f6                	xor    %esi,%esi
     1fe:	66 90                	xchg   %ax,%ax
     200:	8b 45 ec             	mov    -0x14(%ebp),%eax
     203:	8b 5d 08             	mov    0x8(%ebp),%ebx
     206:	8d 78 20             	lea    0x20(%eax),%edi
     209:	eb 30                	jmp    23b <remVariable1+0x6b>
     20b:	90                   	nop
     20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(int k = 0; k < 32; k++)
      if(flag == 0 || (shortcuts1[i].var[k] != variable[k] && 
     210:	0f b6 13             	movzbl (%ebx),%edx
     213:	b9 01 00 00 00       	mov    $0x1,%ecx
     218:	38 10                	cmp    %dl,(%eax)
     21a:	74 15                	je     231 <remVariable1+0x61>
     21c:	83 e2 df             	and    $0xffffffdf,%edx
     21f:	83 ea 41             	sub    $0x41,%edx
     222:	80 fa 1a             	cmp    $0x1a,%dl
     225:	19 c9                	sbb    %ecx,%ecx
     227:	83 c1 01             	add    $0x1,%ecx
     22a:	80 fa 1a             	cmp    $0x1a,%dl
     22d:	0f 42 75 f0          	cmovb  -0x10(%ebp),%esi
     231:	83 c0 01             	add    $0x1,%eax
     234:	83 c3 01             	add    $0x1,%ebx
int 
remVariable1(char* variable) {
  int index = 0;
  int flag = 1;
  for(int i = 0; i < num_of_shortcuts1; i++) {
    for(int k = 0; k < 32; k++)
     237:	39 f8                	cmp    %edi,%eax
     239:	74 11                	je     24c <remVariable1+0x7c>
      if(flag == 0 || (shortcuts1[i].var[k] != variable[k] && 
     23b:	85 c9                	test   %ecx,%ecx
     23d:	75 d1                	jne    210 <remVariable1+0x40>
     23f:	83 c0 01             	add    $0x1,%eax
     242:	83 c3 01             	add    $0x1,%ebx
     245:	8b 75 f0             	mov    -0x10(%ebp),%esi
int 
remVariable1(char* variable) {
  int index = 0;
  int flag = 1;
  for(int i = 0; i < num_of_shortcuts1; i++) {
    for(int k = 0; k < 32; k++)
     248:	39 f8                	cmp    %edi,%eax
     24a:	75 ef                	jne    23b <remVariable1+0x6b>

int 
remVariable1(char* variable) {
  int index = 0;
  int flag = 1;
  for(int i = 0; i < num_of_shortcuts1; i++) {
     24c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
     250:	81 45 ec a0 00 00 00 	addl   $0xa0,-0x14(%ebp)
     257:	8b 45 f0             	mov    -0x10(%ebp),%eax
     25a:	3b 45 e8             	cmp    -0x18(%ebp),%eax
     25d:	75 a1                	jne    200 <remVariable1+0x30>
        ((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')))) {
        flag = 0;
        index = i;
      }
  }
  if(flag == 1) {
     25f:	83 f9 01             	cmp    $0x1,%ecx
     262:	0f 85 aa 00 00 00    	jne    312 <remVariable1+0x142>
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
     268:	8b 45 e8             	mov    -0x18(%ebp),%eax
     26b:	83 e8 01             	sub    $0x1,%eax
     26e:	39 f0                	cmp    %esi,%eax
     270:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     273:	0f 8e 80 00 00 00    	jle    2f9 <remVariable1+0x129>
     279:	8b 45 e8             	mov    -0x18(%ebp),%eax
     27c:	8d 5e 01             	lea    0x1(%esi),%ebx
     27f:	8d 0c b6             	lea    (%esi,%esi,4),%ecx
     282:	69 db 60 ff ff ff    	imul   $0xffffff60,%ebx,%ebx
     288:	c1 e1 05             	shl    $0x5,%ecx
     28b:	8d 04 80             	lea    (%eax,%eax,4),%eax
     28e:	8d b1 20 2b 00 00    	lea    0x2b20(%ecx),%esi
     294:	c1 e0 05             	shl    $0x5,%eax
     297:	05 80 2a 00 00       	add    $0x2a80,%eax
     29c:	89 45 ec             	mov    %eax,-0x14(%ebp)
     29f:	90                   	nop
     2a0:	8d be 80 00 00 00    	lea    0x80(%esi),%edi
struct shortcut1 shortcuts1[MAX_VARIABLES];
int num_of_shortcuts1 = 0;

int 
remVariable1(char* variable) {
  int index = 0;
     2a6:	89 f0                	mov    %esi,%eax
     2a8:	89 5d f0             	mov    %ebx,-0x10(%ebp)
     2ab:	90                   	nop
     2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      }
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
     2b0:	8b 5d f0             	mov    -0x10(%ebp),%ebx
     2b3:	8d 14 03             	lea    (%ebx,%eax,1),%edx
     2b6:	0f b6 18             	movzbl (%eax),%ebx
     2b9:	83 c0 01             	add    $0x1,%eax
        index = i;
      }
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
     2bc:	39 f8                	cmp    %edi,%eax
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
     2be:	88 1c 0a             	mov    %bl,(%edx,%ecx,1)
        index = i;
      }
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
     2c1:	75 ed                	jne    2b0 <remVariable1+0xe0>
     2c3:	8b 5d f0             	mov    -0x10(%ebp),%ebx
     2c6:	8d 46 e0             	lea    -0x20(%esi),%eax
     2c9:	89 df                	mov    %ebx,%edi
     2cb:	90                   	nop
     2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
     2d0:	0f b6 18             	movzbl (%eax),%ebx
     2d3:	8d 14 38             	lea    (%eax,%edi,1),%edx
     2d6:	83 c0 01             	add    $0x1,%eax
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
     2d9:	39 f0                	cmp    %esi,%eax
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
     2db:	88 1c 0a             	mov    %bl,(%edx,%ecx,1)
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
     2de:	75 f0                	jne    2d0 <remVariable1+0x100>
     2e0:	89 fb                	mov    %edi,%ebx
     2e2:	81 c1 a0 00 00 00    	add    $0xa0,%ecx
     2e8:	81 c6 a0 00 00 00    	add    $0xa0,%esi
     2ee:	81 eb a0 00 00 00    	sub    $0xa0,%ebx
        flag = 0;
        index = i;
      }
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
     2f4:	3b 75 ec             	cmp    -0x14(%ebp),%esi
     2f7:	75 a7                	jne    2a0 <remVariable1+0xd0>
      for(int k = 0; k < 128; k++)
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
    }
    num_of_shortcuts1 -= 1;
     2f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     2fc:	a3 80 21 00 00       	mov    %eax,0x2180
    return 0;
  }
  return -1;
}
     301:	83 c4 10             	add    $0x10,%esp
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
    }
    num_of_shortcuts1 -= 1;
    return 0;
     304:	31 c0                	xor    %eax,%eax
  }
  return -1;
}
     306:	5b                   	pop    %ebx
     307:	5e                   	pop    %esi
     308:	5f                   	pop    %edi
     309:	5d                   	pop    %ebp
     30a:	c3                   	ret    
struct shortcut1 shortcuts1[MAX_VARIABLES];
int num_of_shortcuts1 = 0;

int 
remVariable1(char* variable) {
  int index = 0;
     30b:	31 f6                	xor    %esi,%esi
     30d:	e9 56 ff ff ff       	jmp    268 <remVariable1+0x98>
    }
    num_of_shortcuts1 -= 1;
    return 0;
  }
  return -1;
}
     312:	83 c4 10             	add    $0x10,%esp
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
    }
    num_of_shortcuts1 -= 1;
    return 0;
  }
  return -1;
     315:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     31a:	5b                   	pop    %ebx
     31b:	5e                   	pop    %esi
     31c:	5f                   	pop    %edi
     31d:	5d                   	pop    %ebp
     31e:	c3                   	ret    
     31f:	90                   	nop

00000320 <getVariable1>:

int
getVariable1(char* variable, char* value) {
     320:	55                   	push   %ebp
     321:	89 e5                	mov    %esp,%ebp
     323:	57                   	push   %edi
     324:	56                   	push   %esi
     325:	53                   	push   %ebx
     326:	83 ec 1c             	sub    $0x1c,%esp
  for(int i = 0; i < num_of_shortcuts1; i++) {
     329:	a1 80 21 00 00       	mov    0x2180,%eax
     32e:	c7 45 e0 60 2a 00 00 	movl   $0x2a60,-0x20(%ebp)
     335:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
     33c:	85 c0                	test   %eax,%eax
     33e:	0f 8e 95 00 00 00    	jle    3d9 <getVariable1+0xb9>
     344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    int flag = 1;
    int k = 0;
    while((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')) {
     348:	8b 45 08             	mov    0x8(%ebp),%eax
     34b:	0f b6 00             	movzbl (%eax),%eax
     34e:	88 45 df             	mov    %al,-0x21(%ebp)
     351:	83 e0 df             	and    $0xffffffdf,%eax
     354:	83 e8 41             	sub    $0x41,%eax
     357:	3c 19                	cmp    $0x19,%al
     359:	0f 87 87 00 00 00    	ja     3e6 <getVariable1+0xc6>
     35f:	8b 75 08             	mov    0x8(%ebp),%esi
     362:	8b 7d e0             	mov    -0x20(%ebp),%edi
     365:	bb 01 00 00 00       	mov    $0x1,%ebx
     36a:	89 f0                	mov    %esi,%eax
     36c:	89 de                	mov    %ebx,%esi
     36e:	89 c3                	mov    %eax,%ebx
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
     370:	ff 75 e0             	pushl  -0x20(%ebp)
     373:	ff 75 e4             	pushl  -0x1c(%ebp)
     376:	68 e0 18 00 00       	push   $0x18e0
     37b:	6a 02                	push   $0x2
     37d:	e8 3e 12 00 00       	call   15c0 <printf>
      if(shortcuts1[i].var[k] != variable[k])
         flag = 0;
     382:	0f b6 03             	movzbl (%ebx),%eax
  for(int i = 0; i < num_of_shortcuts1; i++) {
    int flag = 1;
    int k = 0;
    while((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')) {
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
      if(shortcuts1[i].var[k] != variable[k])
     385:	83 c4 10             	add    $0x10,%esp
         flag = 0;
     388:	38 07                	cmp    %al,(%edi)
     38a:	b8 00 00 00 00       	mov    $0x0,%eax
     38f:	0f 45 f0             	cmovne %eax,%esi
int
getVariable1(char* variable, char* value) {
  for(int i = 0; i < num_of_shortcuts1; i++) {
    int flag = 1;
    int k = 0;
    while((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')) {
     392:	83 c3 01             	add    $0x1,%ebx
     395:	0f b6 03             	movzbl (%ebx),%eax
     398:	83 c7 01             	add    $0x1,%edi
     39b:	83 e0 df             	and    $0xffffffdf,%eax
     39e:	83 e8 41             	sub    $0x41,%eax
     3a1:	3c 19                	cmp    $0x19,%al
     3a3:	76 cb                	jbe    370 <getVariable1+0x50>
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
      if(shortcuts1[i].var[k] != variable[k])
         flag = 0;
      k++;
    }
   printf(2, "var get: %s\n", variable);
     3a5:	83 ec 04             	sub    $0x4,%esp
     3a8:	ff 75 08             	pushl  0x8(%ebp)
     3ab:	68 f8 18 00 00       	push   $0x18f8
     3b0:	6a 02                	push   $0x2
     3b2:	e8 09 12 00 00       	call   15c0 <printf>

    if(flag == 1) {
     3b7:	83 c4 10             	add    $0x10,%esp
     3ba:	83 fe 01             	cmp    $0x1,%esi
     3bd:	74 3c                	je     3fb <getVariable1+0xdb>
  return -1;
}

int
getVariable1(char* variable, char* value) {
  for(int i = 0; i < num_of_shortcuts1; i++) {
     3bf:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
     3c3:	81 45 e0 a0 00 00 00 	addl   $0xa0,-0x20(%ebp)
     3ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     3cd:	39 05 80 21 00 00    	cmp    %eax,0x2180
     3d3:	0f 8f 6f ff ff ff    	jg     348 <getVariable1+0x28>
        value[k] = shortcuts1[i].val[k];
      return 0;
    }
  }
  return -1;
}
     3d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
      for(int k = 0; k < 128; k++)
        value[k] = shortcuts1[i].val[k];
      return 0;
    }
  }
  return -1;
     3dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     3e1:	5b                   	pop    %ebx
     3e2:	5e                   	pop    %esi
     3e3:	5f                   	pop    %edi
     3e4:	5d                   	pop    %ebp
     3e5:	c3                   	ret    
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
      if(shortcuts1[i].var[k] != variable[k])
         flag = 0;
      k++;
    }
   printf(2, "var get: %s\n", variable);
     3e6:	83 ec 04             	sub    $0x4,%esp
     3e9:	ff 75 08             	pushl  0x8(%ebp)
     3ec:	68 f8 18 00 00       	push   $0x18f8
     3f1:	6a 02                	push   $0x2
     3f3:	e8 c8 11 00 00       	call   15c0 <printf>
     3f8:	83 c4 10             	add    $0x10,%esp
     3fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    int flag = 1;
    int k = 0;
    while((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')) {
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
      if(shortcuts1[i].var[k] != variable[k])
         flag = 0;
     3fe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     401:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
     404:	31 c0                	xor    %eax,%eax
     406:	c1 e1 05             	shl    $0x5,%ecx
     409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
   printf(2, "var get: %s\n", variable);

    if(flag == 1) {
      for(int k = 0; k < 128; k++)
        value[k] = shortcuts1[i].val[k];
     410:	0f b6 94 01 80 2a 00 	movzbl 0x2a80(%ecx,%eax,1),%edx
     417:	00 
     418:	88 14 03             	mov    %dl,(%ebx,%eax,1)
      k++;
    }
   printf(2, "var get: %s\n", variable);

    if(flag == 1) {
      for(int k = 0; k < 128; k++)
     41b:	83 c0 01             	add    $0x1,%eax
     41e:	3d 80 00 00 00       	cmp    $0x80,%eax
     423:	75 eb                	jne    410 <getVariable1+0xf0>
        value[k] = shortcuts1[i].val[k];
      return 0;
    }
  }
  return -1;
}
     425:	8d 65 f4             	lea    -0xc(%ebp),%esp
   printf(2, "var get: %s\n", variable);

    if(flag == 1) {
      for(int k = 0; k < 128; k++)
        value[k] = shortcuts1[i].val[k];
      return 0;
     428:	31 c0                	xor    %eax,%eax
    }
  }
  return -1;
}
     42a:	5b                   	pop    %ebx
     42b:	5e                   	pop    %esi
     42c:	5f                   	pop    %edi
     42d:	5d                   	pop    %ebp
     42e:	c3                   	ret    
     42f:	90                   	nop

00000430 <setVariable1>:

int 
setVariable1(char* variable, char* value) {
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	57                   	push   %edi
     434:	56                   	push   %esi
     435:	53                   	push   %ebx
     436:	83 ec 0c             	sub    $0xc,%esp
  if(num_of_shortcuts1 < 31) {
     439:	83 3d 80 21 00 00 1e 	cmpl   $0x1e,0x2180
  }
  return -1;
}

int 
setVariable1(char* variable, char* value) {
     440:	8b 5d 08             	mov    0x8(%ebp),%ebx
     443:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(num_of_shortcuts1 < 31) {
     446:	7f 6e                	jg     4b6 <setVariable1+0x86>
    //remVariable1(variable);
    printf(2, "var added: %s\n", variable);
     448:	83 ec 04             	sub    $0x4,%esp
     44b:	53                   	push   %ebx
     44c:	68 05 19 00 00       	push   $0x1905
     451:	6a 02                	push   $0x2
     453:	e8 68 11 00 00       	call   15c0 <printf>
     458:	8b 35 80 21 00 00    	mov    0x2180,%esi
     45e:	83 c4 10             	add    $0x10,%esp
    for(int k = 0; k < 128; k++)
     461:	31 c0                	xor    %eax,%eax
     463:	8d 0c b6             	lea    (%esi,%esi,4),%ecx
     466:	c1 e1 05             	shl    $0x5,%ecx
     469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      shortcuts1[num_of_shortcuts1].val[k] = value[k];
     470:	0f b6 14 07          	movzbl (%edi,%eax,1),%edx
     474:	88 94 01 80 2a 00 00 	mov    %dl,0x2a80(%ecx,%eax,1)
int 
setVariable1(char* variable, char* value) {
  if(num_of_shortcuts1 < 31) {
    //remVariable1(variable);
    printf(2, "var added: %s\n", variable);
    for(int k = 0; k < 128; k++)
     47b:	83 c0 01             	add    $0x1,%eax
     47e:	3d 80 00 00 00       	cmp    $0x80,%eax
     483:	75 eb                	jne    470 <setVariable1+0x40>
     485:	31 d2                	xor    %edx,%edx
     487:	89 f6                	mov    %esi,%esi
     489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      shortcuts1[num_of_shortcuts1].val[k] = value[k];
    for(int k = 0; k < 32; k++)
      shortcuts1[num_of_shortcuts1].var[k] = variable[k];
     490:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
     494:	88 84 11 60 2a 00 00 	mov    %al,0x2a60(%ecx,%edx,1)
  if(num_of_shortcuts1 < 31) {
    //remVariable1(variable);
    printf(2, "var added: %s\n", variable);
    for(int k = 0; k < 128; k++)
      shortcuts1[num_of_shortcuts1].val[k] = value[k];
    for(int k = 0; k < 32; k++)
     49b:	83 c2 01             	add    $0x1,%edx
     49e:	83 fa 20             	cmp    $0x20,%edx
     4a1:	75 ed                	jne    490 <setVariable1+0x60>
      shortcuts1[num_of_shortcuts1].var[k] = variable[k];
    num_of_shortcuts1++;
     4a3:	83 c6 01             	add    $0x1,%esi
     4a6:	31 c0                	xor    %eax,%eax
     4a8:	89 35 80 21 00 00    	mov    %esi,0x2180
    return 0;
  }
  return -1;
}
     4ae:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4b1:	5b                   	pop    %ebx
     4b2:	5e                   	pop    %esi
     4b3:	5f                   	pop    %edi
     4b4:	5d                   	pop    %ebp
     4b5:	c3                   	ret    
    for(int k = 0; k < 32; k++)
      shortcuts1[num_of_shortcuts1].var[k] = variable[k];
    num_of_shortcuts1++;
    return 0;
  }
  return -1;
     4b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     4bb:	eb f1                	jmp    4ae <setVariable1+0x7e>
     4bd:	8d 76 00             	lea    0x0(%esi),%esi

000004c0 <fix_buffer>:
}

//fix buffer if there is a need and return 1 if there is no need return 0
void
fix_buffer(char* buf) {
     4c0:	55                   	push   %ebp
     4c1:	89 e5                	mov    %esp,%ebp
     4c3:	57                   	push   %edi
     4c4:	56                   	push   %esi
     4c5:	53                   	push   %ebx
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
     4c6:	31 f6                	xor    %esi,%esi
  return -1;
}

//fix buffer if there is a need and return 1 if there is no need return 0
void
fix_buffer(char* buf) {
     4c8:	81 ec 40 01 00 00    	sub    $0x140,%esp
     4ce:	8b 5d 08             	mov    0x8(%ebp),%ebx
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
   printf(2, "buf: %s\n", buf);
     4d1:	53                   	push   %ebx
     4d2:	68 14 19 00 00       	push   $0x1914
     4d7:	6a 02                	push   $0x2
     4d9:	e8 e2 10 00 00       	call   15c0 <printf>
     4de:	83 c4 10             	add    $0x10,%esp
   for(int i = 0; i < 128; i++) {
     4e1:	31 d2                	xor    %edx,%edx
void
fix_buffer(char* buf) {
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
     4e3:	31 c9                	xor    %ecx,%ecx
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
            variable[k - 1] = buf[i + k];
            k++;
         }
         int t = getVariable1(variable, value);
     4e5:	89 b5 c4 fe ff ff    	mov    %esi,-0x13c(%ebp)
     4eb:	eb 25                	jmp    512 <fix_buffer+0x52>
     4ed:	8d 76 00             	lea    0x0(%esi),%esi
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
   printf(2, "buf: %s\n", buf);
   for(int i = 0; i < 128; i++) {
      if(buf[i] == '$') {
     4f0:	83 c2 01             	add    $0x1,%edx
               buf_index++;
               j++;
            }          
         }
      }
      tmp_buf[buf_index] = buf[i];
     4f3:	8b b5 c4 fe ff ff    	mov    -0x13c(%ebp),%esi
     4f9:	88 84 35 e8 fe ff ff 	mov    %al,-0x118(%ebp,%esi,1)
      buf_index++;
     500:	83 c6 01             	add    $0x1,%esi
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
   printf(2, "buf: %s\n", buf);
   for(int i = 0; i < 128; i++) {
     503:	83 fa 7f             	cmp    $0x7f,%edx
               j++;
            }          
         }
      }
      tmp_buf[buf_index] = buf[i];
      buf_index++;
     506:	89 b5 c4 fe ff ff    	mov    %esi,-0x13c(%ebp)
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
   printf(2, "buf: %s\n", buf);
   for(int i = 0; i < 128; i++) {
     50c:	0f 8f 19 01 00 00    	jg     62b <fix_buffer+0x16b>
      if(buf[i] == '$') {
     512:	8d 04 13             	lea    (%ebx,%edx,1),%eax
     515:	89 85 c0 fe ff ff    	mov    %eax,-0x140(%ebp)
     51b:	0f b6 00             	movzbl (%eax),%eax
     51e:	3c 24                	cmp    $0x24,%al
     520:	75 ce                	jne    4f0 <fix_buffer+0x30>
         char value[128];
         char variable[32];
         flag = 1;
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
     522:	0f b6 4c 13 01       	movzbl 0x1(%ebx,%edx,1),%ecx
     527:	8d 42 01             	lea    0x1(%edx),%eax
     52a:	89 85 b8 fe ff ff    	mov    %eax,-0x148(%ebp)
     530:	89 c8                	mov    %ecx,%eax
     532:	83 e0 df             	and    $0xffffffdf,%eax
     535:	83 e8 41             	sub    $0x41,%eax
     538:	3c 19                	cmp    $0x19,%al
     53a:	0f 87 19 01 00 00    	ja     659 <fix_buffer+0x199>
     540:	8d b5 c8 fe ff ff    	lea    -0x138(%ebp),%esi
     546:	8d 42 02             	lea    0x2(%edx),%eax
            variable[k - 1] = buf[i + k];
     549:	89 f7                	mov    %esi,%edi
     54b:	89 b5 bc fe ff ff    	mov    %esi,-0x144(%ebp)
     551:	29 d7                	sub    %edx,%edi
     553:	90                   	nop
     554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     558:	88 4c 07 fe          	mov    %cl,-0x2(%edi,%eax,1)
      if(buf[i] == '$') {
         char value[128];
         char variable[32];
         flag = 1;
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
     55c:	0f b6 0c 03          	movzbl (%ebx,%eax,1),%ecx
     560:	89 c6                	mov    %eax,%esi
     562:	83 c0 01             	add    $0x1,%eax
     565:	89 ca                	mov    %ecx,%edx
     567:	83 e2 df             	and    $0xffffffdf,%edx
     56a:	83 ea 41             	sub    $0x41,%edx
     56d:	80 fa 19             	cmp    $0x19,%dl
     570:	76 e6                	jbe    558 <fix_buffer+0x98>
            variable[k - 1] = buf[i + k];
            k++;
         }
         int t = getVariable1(variable, value);
     572:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
     578:	83 ec 08             	sub    $0x8,%esp
     57b:	50                   	push   %eax
     57c:	ff b5 bc fe ff ff    	pushl  -0x144(%ebp)
     582:	e8 99 fd ff ff       	call   320 <getVariable1>
         printf(2, "var: %s\n", variable);
     587:	83 c4 0c             	add    $0xc,%esp
     58a:	ff b5 bc fe ff ff    	pushl  -0x144(%ebp)
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
            variable[k - 1] = buf[i + k];
            k++;
         }
         int t = getVariable1(variable, value);
     590:	89 c7                	mov    %eax,%edi
         printf(2, "var: %s\n", variable);
     592:	68 ef 18 00 00       	push   $0x18ef
     597:	6a 02                	push   $0x2
     599:	e8 22 10 00 00       	call   15c0 <printf>
         printf(2, "val: %s\n", value);
     59e:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
     5a4:	83 c4 0c             	add    $0xc,%esp
     5a7:	50                   	push   %eax
     5a8:	68 1d 19 00 00       	push   $0x191d
     5ad:	6a 02                	push   $0x2
     5af:	e8 0c 10 00 00       	call   15c0 <printf>
         printf(2, "t: %d\n", t);
     5b4:	83 c4 0c             	add    $0xc,%esp
     5b7:	57                   	push   %edi
     5b8:	68 26 19 00 00       	push   $0x1926
     5bd:	6a 02                	push   $0x2
     5bf:	e8 fc 0f 00 00       	call   15c0 <printf>

         if(t == 0) {
     5c4:	83 c4 10             	add    $0x10,%esp
     5c7:	85 ff                	test   %edi,%edi
     5c9:	8b 95 b8 fe ff ff    	mov    -0x148(%ebp),%edx
     5cf:	75 47                	jne    618 <fix_buffer+0x158>
            i = i + k;
            int j = 0;
            while (value[j] != 0) {
     5d1:	0f b6 95 68 ff ff ff 	movzbl -0x98(%ebp),%edx
     5d8:	84 d2                	test   %dl,%dl
     5da:	0f 84 90 00 00 00    	je     670 <fix_buffer+0x1b0>
     5e0:	8b 85 c4 fe ff ff    	mov    -0x13c(%ebp),%eax
     5e6:	8d 8d 68 ff ff ff    	lea    -0x98(%ebp),%ecx
     5ec:	8d bd e8 fe ff ff    	lea    -0x118(%ebp),%edi
     5f2:	29 c1                	sub    %eax,%ecx
     5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
               tmp_buf[buf_index] = value[j];
     5f8:	88 14 07             	mov    %dl,(%edi,%eax,1)
               buf_index++;
     5fb:	83 c0 01             	add    $0x1,%eax
         printf(2, "t: %d\n", t);

         if(t == 0) {
            i = i + k;
            int j = 0;
            while (value[j] != 0) {
     5fe:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
     602:	84 d2                	test   %dl,%dl
     604:	75 f2                	jne    5f8 <fix_buffer+0x138>
     606:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
     609:	8d 56 01             	lea    0x1(%esi),%edx
               tmp_buf[buf_index] = value[j];
               buf_index++;
     60c:	89 85 c4 fe ff ff    	mov    %eax,-0x13c(%ebp)
     612:	89 bd c0 fe ff ff    	mov    %edi,-0x140(%ebp)
     618:	8b 85 c0 fe ff ff    	mov    -0x140(%ebp),%eax
   printf(2, "buf: %s\n", buf);
   for(int i = 0; i < 128; i++) {
      if(buf[i] == '$') {
         char value[128];
         char variable[32];
         flag = 1;
     61e:	b9 01 00 00 00       	mov    $0x1,%ecx
     623:	0f b6 00             	movzbl (%eax),%eax
     626:	e9 c8 fe ff ff       	jmp    4f3 <fix_buffer+0x33>
         }
      }
      tmp_buf[buf_index] = buf[i];
      buf_index++;
   }
   if(flag == 1) 
     62b:	83 f9 01             	cmp    $0x1,%ecx
     62e:	74 08                	je     638 <fix_buffer+0x178>
      for(int i = 0; i < 128; i++)
         buf[i] = tmp_buf[i];
}
     630:	8d 65 f4             	lea    -0xc(%ebp),%esp
     633:	5b                   	pop    %ebx
     634:	5e                   	pop    %esi
     635:	5f                   	pop    %edi
     636:	5d                   	pop    %ebp
     637:	c3                   	ret    
     638:	8d 8d e8 fe ff ff    	lea    -0x118(%ebp),%ecx
     63e:	31 c0                	xor    %eax,%eax
      tmp_buf[buf_index] = buf[i];
      buf_index++;
   }
   if(flag == 1) 
      for(int i = 0; i < 128; i++)
         buf[i] = tmp_buf[i];
     640:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
     644:	88 14 03             	mov    %dl,(%ebx,%eax,1)
      }
      tmp_buf[buf_index] = buf[i];
      buf_index++;
   }
   if(flag == 1) 
      for(int i = 0; i < 128; i++)
     647:	83 c0 01             	add    $0x1,%eax
     64a:	3d 80 00 00 00       	cmp    $0x80,%eax
     64f:	75 ef                	jne    640 <fix_buffer+0x180>
         buf[i] = tmp_buf[i];
}
     651:	8d 65 f4             	lea    -0xc(%ebp),%esp
     654:	5b                   	pop    %ebx
     655:	5e                   	pop    %esi
     656:	5f                   	pop    %edi
     657:	5d                   	pop    %ebp
     658:	c3                   	ret    
     659:	8d 85 c8 fe ff ff    	lea    -0x138(%ebp),%eax
      if(buf[i] == '$') {
         char value[128];
         char variable[32];
         flag = 1;
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
     65f:	8b b5 b8 fe ff ff    	mov    -0x148(%ebp),%esi
     665:	89 85 bc fe ff ff    	mov    %eax,-0x144(%ebp)
     66b:	e9 02 ff ff ff       	jmp    572 <fix_buffer+0xb2>
     670:	8d 04 33             	lea    (%ebx,%esi,1),%eax
     673:	8d 56 01             	lea    0x1(%esi),%edx
     676:	89 85 c0 fe ff ff    	mov    %eax,-0x140(%ebp)
     67c:	eb 9a                	jmp    618 <fix_buffer+0x158>
     67e:	66 90                	xchg   %ax,%ax

00000680 <push_history>:
         buf[i] = tmp_buf[i];
}


void 
push_history(char* data) {
     680:	55                   	push   %ebp
     681:	89 e5                	mov    %esp,%ebp
     683:	57                   	push   %edi
     684:	56                   	push   %esi
     685:	53                   	push   %ebx
     686:	83 ec 08             	sub    $0x8,%esp
   if(nextfree == MAX_HISTORY)
     689:	a1 84 21 00 00       	mov    0x2184,%eax
         buf[i] = tmp_buf[i];
}


void 
push_history(char* data) {
     68e:	8b 7d 08             	mov    0x8(%ebp),%edi
   if(nextfree == MAX_HISTORY)
     691:	83 f8 10             	cmp    $0x10,%eax
     694:	89 45 ec             	mov    %eax,-0x14(%ebp)
     697:	74 34                	je     6cd <push_history+0x4d>
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
            history[i].com[k] = history[i - 1].com[k];
   else
      nextfree += 1;
     699:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
     69d:	8b 45 ec             	mov    -0x14(%ebp),%eax
     6a0:	a3 84 21 00 00       	mov    %eax,0x2184
     6a5:	8b 4d ec             	mov    -0x14(%ebp),%ecx
     6a8:	31 c0                	xor    %eax,%eax
     6aa:	c1 e1 07             	shl    $0x7,%ecx
     6ad:	8d 76 00             	lea    0x0(%esi),%esi
   for(int k = 0; k < 128; k++) 
      history[nextfree].com[k] = data[k];
     6b0:	0f b6 14 07          	movzbl (%edi,%eax,1),%edx
     6b4:	88 94 01 60 22 00 00 	mov    %dl,0x2260(%ecx,%eax,1)
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
            history[i].com[k] = history[i - 1].com[k];
   else
      nextfree += 1;
   for(int k = 0; k < 128; k++) 
     6bb:	83 c0 01             	add    $0x1,%eax
     6be:	3d 80 00 00 00       	cmp    $0x80,%eax
     6c3:	75 eb                	jne    6b0 <push_history+0x30>
      history[nextfree].com[k] = data[k];
}
     6c5:	83 c4 08             	add    $0x8,%esp
     6c8:	5b                   	pop    %ebx
     6c9:	5e                   	pop    %esi
     6ca:	5f                   	pop    %edi
     6cb:	5d                   	pop    %ebp
     6cc:	c3                   	ret    
     6cd:	31 c9                	xor    %ecx,%ecx
     6cf:	90                   	nop
     6d0:	bb 80 00 00 00       	mov    $0x80,%ebx
     6d5:	b8 60 22 00 00       	mov    $0x2260,%eax
     6da:	89 4d f0             	mov    %ecx,-0x10(%ebp)
     6dd:	29 cb                	sub    %ecx,%ebx
     6df:	29 c8                	sub    %ecx,%eax
     6e1:	8d b3 60 22 00 00    	lea    0x2260(%ebx),%esi
     6e7:	89 f6                	mov    %esi,%esi
     6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
void 
push_history(char* data) {
   if(nextfree == MAX_HISTORY)
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
            history[i].com[k] = history[i - 1].com[k];
     6f0:	8b 4d f0             	mov    -0x10(%ebp),%ecx
     6f3:	8d 14 01             	lea    (%ecx,%eax,1),%edx
     6f6:	0f b6 08             	movzbl (%eax),%ecx
     6f9:	83 c0 01             	add    $0x1,%eax

void 
push_history(char* data) {
   if(nextfree == MAX_HISTORY)
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
     6fc:	39 f0                	cmp    %esi,%eax
            history[i].com[k] = history[i - 1].com[k];
     6fe:	88 0c 1a             	mov    %cl,(%edx,%ebx,1)

void 
push_history(char* data) {
   if(nextfree == MAX_HISTORY)
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
     701:	75 ed                	jne    6f0 <push_history+0x70>
     703:	8b 4d f0             	mov    -0x10(%ebp),%ecx
     706:	83 c1 80             	add    $0xffffff80,%ecx


void 
push_history(char* data) {
   if(nextfree == MAX_HISTORY)
      for(int i = 1; i < MAX_HISTORY; i++)
     709:	81 f9 80 f8 ff ff    	cmp    $0xfffff880,%ecx
     70f:	75 bf                	jne    6d0 <push_history+0x50>
     711:	eb 92                	jmp    6a5 <push_history+0x25>
     713:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000720 <get_line>:
   for(int k = 0; k < 128; k++) 
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
     720:	55                   	push   %ebp
   return history[nextfree - index].com;
     721:	a1 84 21 00 00       	mov    0x2184,%eax
   for(int k = 0; k < 128; k++) 
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
     726:	89 e5                	mov    %esp,%ebp
   return history[nextfree - index].com;
     728:	2b 45 08             	sub    0x8(%ebp),%eax
}
     72b:	5d                   	pop    %ebp
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
   return history[nextfree - index].com;
     72c:	c1 e0 07             	shl    $0x7,%eax
     72f:	05 60 22 00 00       	add    $0x2260,%eax
}
     734:	c3                   	ret    
     735:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <print_history>:

void 
print_history() {
   for(int i = 0; i < nextfree; i++) 
     740:	a1 84 21 00 00       	mov    0x2184,%eax
get_line(int index) {
   return history[nextfree - index].com;
}

void 
print_history() {
     745:	55                   	push   %ebp
     746:	89 e5                	mov    %esp,%ebp
     748:	56                   	push   %esi
     749:	53                   	push   %ebx
     74a:	31 db                	xor    %ebx,%ebx
   for(int i = 0; i < nextfree; i++) 
     74c:	85 c0                	test   %eax,%eax
     74e:	be 60 22 00 00       	mov    $0x2260,%esi
     753:	7e 24                	jle    779 <print_history+0x39>
     755:	8d 76 00             	lea    0x0(%esi),%esi
      printf(2, "%s\n", history[i].com);
     758:	83 ec 04             	sub    $0x4,%esp
   return history[nextfree - index].com;
}

void 
print_history() {
   for(int i = 0; i < nextfree; i++) 
     75b:	83 c3 01             	add    $0x1,%ebx
      printf(2, "%s\n", history[i].com);
     75e:	56                   	push   %esi
     75f:	68 10 19 00 00       	push   $0x1910
     764:	83 ee 80             	sub    $0xffffff80,%esi
     767:	6a 02                	push   $0x2
     769:	e8 52 0e 00 00       	call   15c0 <printf>
   return history[nextfree - index].com;
}

void 
print_history() {
   for(int i = 0; i < nextfree; i++) 
     76e:	83 c4 10             	add    $0x10,%esp
     771:	39 1d 84 21 00 00    	cmp    %ebx,0x2184
     777:	7f df                	jg     758 <print_history+0x18>
      printf(2, "%s\n", history[i].com);
   nextfree = 0;
   printf(2, "history\n");
     779:	83 ec 08             	sub    $0x8,%esp

void 
print_history() {
   for(int i = 0; i < nextfree; i++) 
      printf(2, "%s\n", history[i].com);
   nextfree = 0;
     77c:	c7 05 84 21 00 00 00 	movl   $0x0,0x2184
     783:	00 00 00 
   printf(2, "history\n");
     786:	68 2d 19 00 00       	push   $0x192d
     78b:	6a 02                	push   $0x2
     78d:	e8 2e 0e 00 00       	call   15c0 <printf>
}
     792:	8d 65 f8             	lea    -0x8(%ebp),%esp
     795:	5b                   	pop    %ebx
     796:	5e                   	pop    %esi
     797:	5d                   	pop    %ebp
     798:	c3                   	ret    
     799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007a0 <history_support>:

//prints history if the buffer says so, returns 1 if printed or 0 if not.
int
history_support(char* buf) {
     7a0:	55                   	push   %ebp
     7a1:	89 e5                	mov    %esp,%ebp
     7a3:	53                   	push   %ebx
     7a4:	83 ec 04             	sub    $0x4,%esp
     7a7:	8b 45 08             	mov    0x8(%ebp),%eax
   if(buf[0] == 'h' && buf[1] == 'i' && buf[2] == 's' && buf[3] == 't' && buf[4] == 'o' && buf[5] == 'r' && buf[6] == 'y') {
     7aa:	80 38 68             	cmpb   $0x68,(%eax)
     7ad:	74 11                	je     7c0 <history_support+0x20>
      }
      else 
         print_history();
      return 1; 
   }
   return 0;
     7af:	31 c0                	xor    %eax,%eax
}
     7b1:	83 c4 04             	add    $0x4,%esp
     7b4:	5b                   	pop    %ebx
     7b5:	5d                   	pop    %ebp
     7b6:	c3                   	ret    
     7b7:	89 f6                	mov    %esi,%esi
     7b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
}

//prints history if the buffer says so, returns 1 if printed or 0 if not.
int
history_support(char* buf) {
   if(buf[0] == 'h' && buf[1] == 'i' && buf[2] == 's' && buf[3] == 't' && buf[4] == 'o' && buf[5] == 'r' && buf[6] == 'y') {
     7c0:	80 78 01 69          	cmpb   $0x69,0x1(%eax)
     7c4:	75 e9                	jne    7af <history_support+0xf>
     7c6:	80 78 02 73          	cmpb   $0x73,0x2(%eax)
     7ca:	75 e3                	jne    7af <history_support+0xf>
     7cc:	80 78 03 74          	cmpb   $0x74,0x3(%eax)
     7d0:	75 dd                	jne    7af <history_support+0xf>
     7d2:	80 78 04 6f          	cmpb   $0x6f,0x4(%eax)
     7d6:	75 d7                	jne    7af <history_support+0xf>
     7d8:	80 78 05 72          	cmpb   $0x72,0x5(%eax)
     7dc:	75 d1                	jne    7af <history_support+0xf>
     7de:	80 78 06 79          	cmpb   $0x79,0x6(%eax)
     7e2:	75 cb                	jne    7af <history_support+0xf>
      if (buf[8] == '-' && buf[9] =='l') {
     7e4:	80 78 08 2d          	cmpb   $0x2d,0x8(%eax)
     7e8:	75 06                	jne    7f0 <history_support+0x50>
     7ea:	80 78 09 6c          	cmpb   $0x6c,0x9(%eax)
     7ee:	74 0c                	je     7fc <history_support+0x5c>
         for(int i = 0; i < 128; i++)
            buf[i] = line[i];
         return 0;
      }
      else 
         print_history();
     7f0:	e8 4b ff ff ff       	call   740 <print_history>
      return 1; 
     7f5:	b8 01 00 00 00       	mov    $0x1,%eax
     7fa:	eb b5                	jmp    7b1 <history_support+0x11>
history_support(char* buf) {
   if(buf[0] == 'h' && buf[1] == 'i' && buf[2] == 's' && buf[3] == 't' && buf[4] == 'o' && buf[5] == 'r' && buf[6] == 'y') {
      if (buf[8] == '-' && buf[9] =='l') {
         int line_num;
         char* line;
         if(buf[12] > 47 && buf[12] < 58)
     7fc:	0f be 48 0c          	movsbl 0xc(%eax),%ecx
     800:	8d 51 d0             	lea    -0x30(%ecx),%edx
     803:	80 fa 09             	cmp    $0x9,%dl
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
     806:	0f be 50 0b          	movsbl 0xb(%eax),%edx
history_support(char* buf) {
   if(buf[0] == 'h' && buf[1] == 'i' && buf[2] == 's' && buf[3] == 't' && buf[4] == 'o' && buf[5] == 'r' && buf[6] == 'y') {
      if (buf[8] == '-' && buf[9] =='l') {
         int line_num;
         char* line;
         if(buf[12] > 47 && buf[12] < 58)
     80a:	77 3b                	ja     847 <history_support+0xa7>
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
     80c:	83 ea 30             	sub    $0x30,%edx
     80f:	6b d2 0a             	imul   $0xa,%edx,%edx
     812:	8d 54 0a d0          	lea    -0x30(%edx,%ecx,1),%edx
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
   return history[nextfree - index].com;
     816:	8b 1d 84 21 00 00    	mov    0x2184,%ebx
     81c:	29 d3                	sub    %edx,%ebx
         if(buf[12] > 47 && buf[12] < 58)
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
         else
            line_num  = buf[11] - 48;
         line = get_line(line_num);
         for(int i = 0; i < 128; i++)
     81e:	31 d2                	xor    %edx,%edx
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
   return history[nextfree - index].com;
     820:	c1 e3 07             	shl    $0x7,%ebx
     823:	81 c3 60 22 00 00    	add    $0x2260,%ebx
     829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
         else
            line_num  = buf[11] - 48;
         line = get_line(line_num);
         for(int i = 0; i < 128; i++)
            buf[i] = line[i];
     830:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
     834:	88 0c 10             	mov    %cl,(%eax,%edx,1)
         if(buf[12] > 47 && buf[12] < 58)
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
         else
            line_num  = buf[11] - 48;
         line = get_line(line_num);
         for(int i = 0; i < 128; i++)
     837:	83 c2 01             	add    $0x1,%edx
     83a:	81 fa 80 00 00 00    	cmp    $0x80,%edx
     840:	75 ee                	jne    830 <history_support+0x90>
     842:	e9 68 ff ff ff       	jmp    7af <history_support+0xf>
         int line_num;
         char* line;
         if(buf[12] > 47 && buf[12] < 58)
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
         else
            line_num  = buf[11] - 48;
     847:	83 ea 30             	sub    $0x30,%edx
     84a:	eb ca                	jmp    816 <history_support+0x76>
     84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000850 <getcmd>:
  exit();
}

int
getcmd(char *buf, int nbuf)
{
     850:	55                   	push   %ebp
     851:	89 e5                	mov    %esp,%ebp
     853:	56                   	push   %esi
     854:	53                   	push   %ebx
     855:	8b 75 0c             	mov    0xc(%ebp),%esi
     858:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     85b:	83 ec 08             	sub    $0x8,%esp
     85e:	68 36 19 00 00       	push   $0x1936
     863:	6a 02                	push   $0x2
     865:	e8 56 0d 00 00       	call   15c0 <printf>
  memset(buf, 0, nbuf);
     86a:	83 c4 0c             	add    $0xc,%esp
     86d:	56                   	push   %esi
     86e:	6a 00                	push   $0x0
     870:	53                   	push   %ebx
     871:	e8 5a 0a 00 00       	call   12d0 <memset>
  gets(buf, nbuf);
     876:	58                   	pop    %eax
     877:	5a                   	pop    %edx
     878:	56                   	push   %esi
     879:	53                   	push   %ebx
     87a:	e8 b1 0a 00 00       	call   1330 <gets>
     87f:	83 c4 10             	add    $0x10,%esp
     882:	31 c0                	xor    %eax,%eax
     884:	80 3b 00             	cmpb   $0x0,(%ebx)
     887:	0f 94 c0             	sete   %al
  if(buf[0] == 0) // EOF
    return -1;
  return 0;
}
     88a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     88d:	f7 d8                	neg    %eax
     88f:	5b                   	pop    %ebx
     890:	5e                   	pop    %esi
     891:	5d                   	pop    %ebp
     892:	c3                   	ret    
     893:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008a0 <panic>:
   exit();
}

void
panic(char *s)
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     8a6:	ff 75 08             	pushl  0x8(%ebp)
     8a9:	68 10 19 00 00       	push   $0x1910
     8ae:	6a 02                	push   $0x2
     8b0:	e8 0b 0d 00 00       	call   15c0 <printf>
  exit();
     8b5:	e8 a8 0b 00 00       	call   1462 <exit>
     8ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000008c0 <runcmd>:
struct cmd *parsecmd(char*);

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
     8c0:	55                   	push   %ebp
     8c1:	89 e5                	mov    %esp,%ebp
     8c3:	53                   	push   %ebx
     8c4:	83 ec 14             	sub    $0x14,%esp
     8c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     8ca:	85 db                	test   %ebx,%ebx
     8cc:	74 76                	je     944 <runcmd+0x84>
    exit();

  switch(cmd->type){
     8ce:	83 3b 05             	cmpl   $0x5,(%ebx)
     8d1:	0f 87 f8 00 00 00    	ja     9cf <runcmd+0x10f>
     8d7:	8b 03                	mov    (%ebx),%eax
     8d9:	ff 24 85 f0 19 00 00 	jmp    *0x19f0(,%eax,4)
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     8e0:	8d 45 f0             	lea    -0x10(%ebp),%eax
     8e3:	83 ec 0c             	sub    $0xc,%esp
     8e6:	50                   	push   %eax
     8e7:	e8 86 0b 00 00       	call   1472 <pipe>
     8ec:	83 c4 10             	add    $0x10,%esp
     8ef:	85 c0                	test   %eax,%eax
     8f1:	0f 88 07 01 00 00    	js     9fe <runcmd+0x13e>
int
fork1(void)
{
  int pid;

  pid = fork();
     8f7:	e8 5e 0b 00 00       	call   145a <fork>
  if(pid == -1)
     8fc:	83 f8 ff             	cmp    $0xffffffff,%eax
     8ff:	0f 84 d7 00 00 00    	je     9dc <runcmd+0x11c>

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
     905:	85 c0                	test   %eax,%eax
     907:	0f 84 fe 00 00 00    	je     a0b <runcmd+0x14b>
int
fork1(void)
{
  int pid;

  pid = fork();
     90d:	e8 48 0b 00 00       	call   145a <fork>
  if(pid == -1)
     912:	83 f8 ff             	cmp    $0xffffffff,%eax
     915:	0f 84 c1 00 00 00    	je     9dc <runcmd+0x11c>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
     91b:	85 c0                	test   %eax,%eax
     91d:	0f 84 16 01 00 00    	je     a39 <runcmd+0x179>
      dup(p[0]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->right);
    }
    close(p[0]);
     923:	83 ec 0c             	sub    $0xc,%esp
     926:	ff 75 f0             	pushl  -0x10(%ebp)
     929:	e8 5c 0b 00 00       	call   148a <close>
    close(p[1]);
     92e:	58                   	pop    %eax
     92f:	ff 75 f4             	pushl  -0xc(%ebp)
     932:	e8 53 0b 00 00       	call   148a <close>
    wait();
     937:	e8 2e 0b 00 00       	call   146a <wait>
    wait();
     93c:	e8 29 0b 00 00       	call   146a <wait>
    break;
     941:	83 c4 10             	add    $0x10,%esp
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    exit();
     944:	e8 19 0b 00 00       	call   1462 <exit>
int
fork1(void)
{
  int pid;

  pid = fork();
     949:	e8 0c 0b 00 00       	call   145a <fork>
  if(pid == -1)
     94e:	83 f8 ff             	cmp    $0xffffffff,%eax
     951:	0f 84 85 00 00 00    	je     9dc <runcmd+0x11c>
    wait();
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
     957:	85 c0                	test   %eax,%eax
     959:	75 e9                	jne    944 <runcmd+0x84>
     95b:	eb 49                	jmp    9a6 <runcmd+0xe6>
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     95d:	8b 43 04             	mov    0x4(%ebx),%eax
     960:	85 c0                	test   %eax,%eax
     962:	74 e0                	je     944 <runcmd+0x84>
      exit();
    exec(ecmd->argv[0], ecmd->argv);
     964:	52                   	push   %edx
     965:	52                   	push   %edx
     966:	8d 53 04             	lea    0x4(%ebx),%edx
     969:	52                   	push   %edx
     96a:	50                   	push   %eax
     96b:	e8 2a 0b 00 00       	call   149a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     970:	83 c4 0c             	add    $0xc,%esp
     973:	ff 73 04             	pushl  0x4(%ebx)
     976:	68 40 19 00 00       	push   $0x1940
     97b:	6a 02                	push   $0x2
     97d:	e8 3e 0c 00 00       	call   15c0 <printf>
    break;
     982:	83 c4 10             	add    $0x10,%esp
     985:	eb bd                	jmp    944 <runcmd+0x84>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     987:	83 ec 0c             	sub    $0xc,%esp
     98a:	ff 73 14             	pushl  0x14(%ebx)
     98d:	e8 f8 0a 00 00       	call   148a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     992:	59                   	pop    %ecx
     993:	58                   	pop    %eax
     994:	ff 73 10             	pushl  0x10(%ebx)
     997:	ff 73 08             	pushl  0x8(%ebx)
     99a:	e8 03 0b 00 00       	call   14a2 <open>
     99f:	83 c4 10             	add    $0x10,%esp
     9a2:	85 c0                	test   %eax,%eax
     9a4:	78 43                	js     9e9 <runcmd+0x129>
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
     9a6:	83 ec 0c             	sub    $0xc,%esp
     9a9:	ff 73 04             	pushl  0x4(%ebx)
     9ac:	e8 0f ff ff ff       	call   8c0 <runcmd>
int
fork1(void)
{
  int pid;

  pid = fork();
     9b1:	e8 a4 0a 00 00       	call   145a <fork>
  if(pid == -1)
     9b6:	83 f8 ff             	cmp    $0xffffffff,%eax
     9b9:	74 21                	je     9dc <runcmd+0x11c>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
     9bb:	85 c0                	test   %eax,%eax
     9bd:	74 e7                	je     9a6 <runcmd+0xe6>
      runcmd(lcmd->left);
    wait();
     9bf:	e8 a6 0a 00 00       	call   146a <wait>
    runcmd(lcmd->right);
     9c4:	83 ec 0c             	sub    $0xc,%esp
     9c7:	ff 73 08             	pushl  0x8(%ebx)
     9ca:	e8 f1 fe ff ff       	call   8c0 <runcmd>
  if(cmd == 0)
    exit();

  switch(cmd->type){
  default:
    panic("runcmd");
     9cf:	83 ec 0c             	sub    $0xc,%esp
     9d2:	68 39 19 00 00       	push   $0x1939
     9d7:	e8 c4 fe ff ff       	call   8a0 <panic>
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     9dc:	83 ec 0c             	sub    $0xc,%esp
     9df:	68 60 19 00 00       	push   $0x1960
     9e4:	e8 b7 fe ff ff       	call   8a0 <panic>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
     9e9:	52                   	push   %edx
     9ea:	ff 73 08             	pushl  0x8(%ebx)
     9ed:	68 50 19 00 00       	push   $0x1950
     9f2:	6a 02                	push   $0x2
     9f4:	e8 c7 0b 00 00       	call   15c0 <printf>
      exit();
     9f9:	e8 64 0a 00 00       	call   1462 <exit>
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
     9fe:	83 ec 0c             	sub    $0xc,%esp
     a01:	68 65 19 00 00       	push   $0x1965
     a06:	e8 95 fe ff ff       	call   8a0 <panic>
    if(fork1() == 0){
      close(1);
     a0b:	83 ec 0c             	sub    $0xc,%esp
     a0e:	6a 01                	push   $0x1
     a10:	e8 75 0a 00 00       	call   148a <close>
      dup(p[1]);
     a15:	58                   	pop    %eax
     a16:	ff 75 f4             	pushl  -0xc(%ebp)
     a19:	e8 bc 0a 00 00       	call   14da <dup>
      close(p[0]);
     a1e:	58                   	pop    %eax
     a1f:	ff 75 f0             	pushl  -0x10(%ebp)
     a22:	e8 63 0a 00 00       	call   148a <close>
      close(p[1]);
     a27:	58                   	pop    %eax
     a28:	ff 75 f4             	pushl  -0xc(%ebp)
     a2b:	e8 5a 0a 00 00       	call   148a <close>
      runcmd(pcmd->left);
     a30:	58                   	pop    %eax
     a31:	ff 73 04             	pushl  0x4(%ebx)
     a34:	e8 87 fe ff ff       	call   8c0 <runcmd>
    }
    if(fork1() == 0){
      close(0);
     a39:	83 ec 0c             	sub    $0xc,%esp
     a3c:	6a 00                	push   $0x0
     a3e:	e8 47 0a 00 00       	call   148a <close>
      dup(p[0]);
     a43:	5a                   	pop    %edx
     a44:	ff 75 f0             	pushl  -0x10(%ebp)
     a47:	e8 8e 0a 00 00       	call   14da <dup>
      close(p[0]);
     a4c:	59                   	pop    %ecx
     a4d:	ff 75 f0             	pushl  -0x10(%ebp)
     a50:	e8 35 0a 00 00       	call   148a <close>
      close(p[1]);
     a55:	58                   	pop    %eax
     a56:	ff 75 f4             	pushl  -0xc(%ebp)
     a59:	e8 2c 0a 00 00       	call   148a <close>
      runcmd(pcmd->right);
     a5e:	58                   	pop    %eax
     a5f:	ff 73 08             	pushl  0x8(%ebx)
     a62:	e8 59 fe ff ff       	call   8c0 <runcmd>
     a67:	89 f6                	mov    %esi,%esi
     a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a70 <fork1>:
  exit();
}

int
fork1(void)
{
     a70:	55                   	push   %ebp
     a71:	89 e5                	mov    %esp,%ebp
     a73:	83 ec 08             	sub    $0x8,%esp
  int pid;

  pid = fork();
     a76:	e8 df 09 00 00       	call   145a <fork>
  if(pid == -1)
     a7b:	83 f8 ff             	cmp    $0xffffffff,%eax
     a7e:	74 02                	je     a82 <fork1+0x12>
    panic("fork");
  return pid;
}
     a80:	c9                   	leave  
     a81:	c3                   	ret    
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     a82:	83 ec 0c             	sub    $0xc,%esp
     a85:	68 60 19 00 00       	push   $0x1960
     a8a:	e8 11 fe ff ff       	call   8a0 <panic>
     a8f:	90                   	nop

00000a90 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	53                   	push   %ebx
     a94:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     a97:	6a 54                	push   $0x54
     a99:	e8 52 0d 00 00       	call   17f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     a9e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     aa1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     aa3:	6a 54                	push   $0x54
     aa5:	6a 00                	push   $0x0
     aa7:	50                   	push   %eax
     aa8:	e8 23 08 00 00       	call   12d0 <memset>
  cmd->type = EXEC;
     aad:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     ab3:	89 d8                	mov    %ebx,%eax
     ab5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ab8:	c9                   	leave  
     ab9:	c3                   	ret    
     aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000ac0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     ac0:	55                   	push   %ebp
     ac1:	89 e5                	mov    %esp,%ebp
     ac3:	53                   	push   %ebx
     ac4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     ac7:	6a 18                	push   $0x18
     ac9:	e8 22 0d 00 00       	call   17f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     ace:	83 c4 0c             	add    $0xc,%esp
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     ad1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     ad3:	6a 18                	push   $0x18
     ad5:	6a 00                	push   $0x0
     ad7:	50                   	push   %eax
     ad8:	e8 f3 07 00 00       	call   12d0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     add:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     ae0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     ae6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     ae9:	8b 45 0c             	mov    0xc(%ebp),%eax
     aec:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     aef:	8b 45 10             	mov    0x10(%ebp),%eax
     af2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     af5:	8b 45 14             	mov    0x14(%ebp),%eax
     af8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     afb:	8b 45 18             	mov    0x18(%ebp),%eax
     afe:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     b01:	89 d8                	mov    %ebx,%eax
     b03:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b06:	c9                   	leave  
     b07:	c3                   	ret    
     b08:	90                   	nop
     b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b10 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     b10:	55                   	push   %ebp
     b11:	89 e5                	mov    %esp,%ebp
     b13:	53                   	push   %ebx
     b14:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     b17:	6a 0c                	push   $0xc
     b19:	e8 d2 0c 00 00       	call   17f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     b1e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     b21:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     b23:	6a 0c                	push   $0xc
     b25:	6a 00                	push   $0x0
     b27:	50                   	push   %eax
     b28:	e8 a3 07 00 00       	call   12d0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     b2d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     b30:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     b36:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     b39:	8b 45 0c             	mov    0xc(%ebp),%eax
     b3c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     b3f:	89 d8                	mov    %ebx,%eax
     b41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b44:	c9                   	leave  
     b45:	c3                   	ret    
     b46:	8d 76 00             	lea    0x0(%esi),%esi
     b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b50 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	53                   	push   %ebx
     b54:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     b57:	6a 0c                	push   $0xc
     b59:	e8 92 0c 00 00       	call   17f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     b5e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     b61:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     b63:	6a 0c                	push   $0xc
     b65:	6a 00                	push   $0x0
     b67:	50                   	push   %eax
     b68:	e8 63 07 00 00       	call   12d0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     b6d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     b70:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     b76:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     b79:	8b 45 0c             	mov    0xc(%ebp),%eax
     b7c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     b7f:	89 d8                	mov    %ebx,%eax
     b81:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b84:	c9                   	leave  
     b85:	c3                   	ret    
     b86:	8d 76 00             	lea    0x0(%esi),%esi
     b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b90 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     b90:	55                   	push   %ebp
     b91:	89 e5                	mov    %esp,%ebp
     b93:	53                   	push   %ebx
     b94:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     b97:	6a 08                	push   $0x8
     b99:	e8 52 0c 00 00       	call   17f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     b9e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     ba1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     ba3:	6a 08                	push   $0x8
     ba5:	6a 00                	push   $0x0
     ba7:	50                   	push   %eax
     ba8:	e8 23 07 00 00       	call   12d0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     bad:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     bb0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     bb6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     bb9:	89 d8                	mov    %ebx,%eax
     bbb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bbe:	c9                   	leave  
     bbf:	c3                   	ret    

00000bc0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	57                   	push   %edi
     bc4:	56                   	push   %esi
     bc5:	53                   	push   %ebx
     bc6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     bc9:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     bcc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     bcf:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     bd2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     bd4:	39 df                	cmp    %ebx,%edi
     bd6:	72 13                	jb     beb <gettoken+0x2b>
     bd8:	eb 29                	jmp    c03 <gettoken+0x43>
     bda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     be0:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     be3:	39 fb                	cmp    %edi,%ebx
     be5:	0f 84 ed 00 00 00    	je     cd8 <gettoken+0x118>
     beb:	0f be 07             	movsbl (%edi),%eax
     bee:	83 ec 08             	sub    $0x8,%esp
     bf1:	50                   	push   %eax
     bf2:	68 74 21 00 00       	push   $0x2174
     bf7:	e8 f4 06 00 00       	call   12f0 <strchr>
     bfc:	83 c4 10             	add    $0x10,%esp
     bff:	85 c0                	test   %eax,%eax
     c01:	75 dd                	jne    be0 <gettoken+0x20>
    s++;
  if(q)
     c03:	85 f6                	test   %esi,%esi
     c05:	74 02                	je     c09 <gettoken+0x49>
    *q = s;
     c07:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     c09:	0f be 37             	movsbl (%edi),%esi
     c0c:	89 f1                	mov    %esi,%ecx
     c0e:	89 f0                	mov    %esi,%eax
  switch(*s){
     c10:	80 f9 29             	cmp    $0x29,%cl
     c13:	7f 5b                	jg     c70 <gettoken+0xb0>
     c15:	80 f9 28             	cmp    $0x28,%cl
     c18:	7d 61                	jge    c7b <gettoken+0xbb>
     c1a:	84 c9                	test   %cl,%cl
     c1c:	0f 85 de 00 00 00    	jne    d00 <gettoken+0x140>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     c22:	8b 55 14             	mov    0x14(%ebp),%edx
     c25:	85 d2                	test   %edx,%edx
     c27:	74 05                	je     c2e <gettoken+0x6e>
    *eq = s;
     c29:	8b 45 14             	mov    0x14(%ebp),%eax
     c2c:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     c2e:	39 fb                	cmp    %edi,%ebx
     c30:	77 0d                	ja     c3f <gettoken+0x7f>
     c32:	eb 23                	jmp    c57 <gettoken+0x97>
     c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     c38:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     c3b:	39 fb                	cmp    %edi,%ebx
     c3d:	74 18                	je     c57 <gettoken+0x97>
     c3f:	0f be 07             	movsbl (%edi),%eax
     c42:	83 ec 08             	sub    $0x8,%esp
     c45:	50                   	push   %eax
     c46:	68 74 21 00 00       	push   $0x2174
     c4b:	e8 a0 06 00 00       	call   12f0 <strchr>
     c50:	83 c4 10             	add    $0x10,%esp
     c53:	85 c0                	test   %eax,%eax
     c55:	75 e1                	jne    c38 <gettoken+0x78>
    s++;
  *ps = s;
     c57:	8b 45 08             	mov    0x8(%ebp),%eax
     c5a:	89 38                	mov    %edi,(%eax)
  return ret;
}
     c5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c5f:	89 f0                	mov    %esi,%eax
     c61:	5b                   	pop    %ebx
     c62:	5e                   	pop    %esi
     c63:	5f                   	pop    %edi
     c64:	5d                   	pop    %ebp
     c65:	c3                   	ret    
     c66:	8d 76 00             	lea    0x0(%esi),%esi
     c69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     c70:	80 f9 3e             	cmp    $0x3e,%cl
     c73:	75 0b                	jne    c80 <gettoken+0xc0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     c75:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     c79:	74 75                	je     cf0 <gettoken+0x130>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     c7b:	83 c7 01             	add    $0x1,%edi
     c7e:	eb a2                	jmp    c22 <gettoken+0x62>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     c80:	7f 5e                	jg     ce0 <gettoken+0x120>
     c82:	83 e9 3b             	sub    $0x3b,%ecx
     c85:	80 f9 01             	cmp    $0x1,%cl
     c88:	76 f1                	jbe    c7b <gettoken+0xbb>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     c8a:	39 fb                	cmp    %edi,%ebx
     c8c:	77 24                	ja     cb2 <gettoken+0xf2>
     c8e:	eb 7c                	jmp    d0c <gettoken+0x14c>
     c90:	0f be 07             	movsbl (%edi),%eax
     c93:	83 ec 08             	sub    $0x8,%esp
     c96:	50                   	push   %eax
     c97:	68 6c 21 00 00       	push   $0x216c
     c9c:	e8 4f 06 00 00       	call   12f0 <strchr>
     ca1:	83 c4 10             	add    $0x10,%esp
     ca4:	85 c0                	test   %eax,%eax
     ca6:	75 1f                	jne    cc7 <gettoken+0x107>
      s++;
     ca8:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     cab:	39 fb                	cmp    %edi,%ebx
     cad:	74 5b                	je     d0a <gettoken+0x14a>
     caf:	0f be 07             	movsbl (%edi),%eax
     cb2:	83 ec 08             	sub    $0x8,%esp
     cb5:	50                   	push   %eax
     cb6:	68 74 21 00 00       	push   $0x2174
     cbb:	e8 30 06 00 00       	call   12f0 <strchr>
     cc0:	83 c4 10             	add    $0x10,%esp
     cc3:	85 c0                	test   %eax,%eax
     cc5:	74 c9                	je     c90 <gettoken+0xd0>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     cc7:	be 61 00 00 00       	mov    $0x61,%esi
     ccc:	e9 51 ff ff ff       	jmp    c22 <gettoken+0x62>
     cd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cd8:	89 df                	mov    %ebx,%edi
     cda:	e9 24 ff ff ff       	jmp    c03 <gettoken+0x43>
     cdf:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     ce0:	80 f9 7c             	cmp    $0x7c,%cl
     ce3:	74 96                	je     c7b <gettoken+0xbb>
     ce5:	eb a3                	jmp    c8a <gettoken+0xca>
     ce7:	89 f6                	mov    %esi,%esi
     ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     cf0:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     cf3:	be 2b 00 00 00       	mov    $0x2b,%esi
     cf8:	e9 25 ff ff ff       	jmp    c22 <gettoken+0x62>
     cfd:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     d00:	80 f9 26             	cmp    $0x26,%cl
     d03:	75 85                	jne    c8a <gettoken+0xca>
     d05:	e9 71 ff ff ff       	jmp    c7b <gettoken+0xbb>
     d0a:	89 df                	mov    %ebx,%edi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     d0c:	8b 45 14             	mov    0x14(%ebp),%eax
     d0f:	be 61 00 00 00       	mov    $0x61,%esi
     d14:	85 c0                	test   %eax,%eax
     d16:	0f 85 0d ff ff ff    	jne    c29 <gettoken+0x69>
     d1c:	e9 36 ff ff ff       	jmp    c57 <gettoken+0x97>
     d21:	eb 0d                	jmp    d30 <peek>
     d23:	90                   	nop
     d24:	90                   	nop
     d25:	90                   	nop
     d26:	90                   	nop
     d27:	90                   	nop
     d28:	90                   	nop
     d29:	90                   	nop
     d2a:	90                   	nop
     d2b:	90                   	nop
     d2c:	90                   	nop
     d2d:	90                   	nop
     d2e:	90                   	nop
     d2f:	90                   	nop

00000d30 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	57                   	push   %edi
     d34:	56                   	push   %esi
     d35:	53                   	push   %ebx
     d36:	83 ec 0c             	sub    $0xc,%esp
     d39:	8b 7d 08             	mov    0x8(%ebp),%edi
     d3c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     d3f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     d41:	39 f3                	cmp    %esi,%ebx
     d43:	72 12                	jb     d57 <peek+0x27>
     d45:	eb 28                	jmp    d6f <peek+0x3f>
     d47:	89 f6                	mov    %esi,%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     d50:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     d53:	39 de                	cmp    %ebx,%esi
     d55:	74 18                	je     d6f <peek+0x3f>
     d57:	0f be 03             	movsbl (%ebx),%eax
     d5a:	83 ec 08             	sub    $0x8,%esp
     d5d:	50                   	push   %eax
     d5e:	68 74 21 00 00       	push   $0x2174
     d63:	e8 88 05 00 00       	call   12f0 <strchr>
     d68:	83 c4 10             	add    $0x10,%esp
     d6b:	85 c0                	test   %eax,%eax
     d6d:	75 e1                	jne    d50 <peek+0x20>
    s++;
  *ps = s;
     d6f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     d71:	0f be 13             	movsbl (%ebx),%edx
     d74:	31 c0                	xor    %eax,%eax
     d76:	84 d2                	test   %dl,%dl
     d78:	74 17                	je     d91 <peek+0x61>
     d7a:	83 ec 08             	sub    $0x8,%esp
     d7d:	52                   	push   %edx
     d7e:	ff 75 10             	pushl  0x10(%ebp)
     d81:	e8 6a 05 00 00       	call   12f0 <strchr>
     d86:	83 c4 10             	add    $0x10,%esp
     d89:	85 c0                	test   %eax,%eax
     d8b:	0f 95 c0             	setne  %al
     d8e:	0f b6 c0             	movzbl %al,%eax
}
     d91:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d94:	5b                   	pop    %ebx
     d95:	5e                   	pop    %esi
     d96:	5f                   	pop    %edi
     d97:	5d                   	pop    %ebp
     d98:	c3                   	ret    
     d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000da0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     da0:	55                   	push   %ebp
     da1:	89 e5                	mov    %esp,%ebp
     da3:	57                   	push   %edi
     da4:	56                   	push   %esi
     da5:	53                   	push   %ebx
     da6:	83 ec 1c             	sub    $0x1c,%esp
     da9:	8b 75 0c             	mov    0xc(%ebp),%esi
     dac:	8b 5d 10             	mov    0x10(%ebp),%ebx
     daf:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     db0:	83 ec 04             	sub    $0x4,%esp
     db3:	68 87 19 00 00       	push   $0x1987
     db8:	53                   	push   %ebx
     db9:	56                   	push   %esi
     dba:	e8 71 ff ff ff       	call   d30 <peek>
     dbf:	83 c4 10             	add    $0x10,%esp
     dc2:	85 c0                	test   %eax,%eax
     dc4:	74 6a                	je     e30 <parseredirs+0x90>
    tok = gettoken(ps, es, 0, 0);
     dc6:	6a 00                	push   $0x0
     dc8:	6a 00                	push   $0x0
     dca:	53                   	push   %ebx
     dcb:	56                   	push   %esi
     dcc:	e8 ef fd ff ff       	call   bc0 <gettoken>
     dd1:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     dd3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     dd6:	50                   	push   %eax
     dd7:	8d 45 e0             	lea    -0x20(%ebp),%eax
     dda:	50                   	push   %eax
     ddb:	53                   	push   %ebx
     ddc:	56                   	push   %esi
     ddd:	e8 de fd ff ff       	call   bc0 <gettoken>
     de2:	83 c4 20             	add    $0x20,%esp
     de5:	83 f8 61             	cmp    $0x61,%eax
     de8:	75 51                	jne    e3b <parseredirs+0x9b>
      panic("missing file for redirection");
    switch(tok){
     dea:	83 ff 3c             	cmp    $0x3c,%edi
     ded:	74 31                	je     e20 <parseredirs+0x80>
     def:	83 ff 3e             	cmp    $0x3e,%edi
     df2:	74 05                	je     df9 <parseredirs+0x59>
     df4:	83 ff 2b             	cmp    $0x2b,%edi
     df7:	75 b7                	jne    db0 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     df9:	83 ec 0c             	sub    $0xc,%esp
     dfc:	6a 01                	push   $0x1
     dfe:	68 01 02 00 00       	push   $0x201
     e03:	ff 75 e4             	pushl  -0x1c(%ebp)
     e06:	ff 75 e0             	pushl  -0x20(%ebp)
     e09:	ff 75 08             	pushl  0x8(%ebp)
     e0c:	e8 af fc ff ff       	call   ac0 <redircmd>
      break;
     e11:	83 c4 20             	add    $0x20,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     e14:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     e17:	eb 97                	jmp    db0 <parseredirs+0x10>
     e19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     e20:	83 ec 0c             	sub    $0xc,%esp
     e23:	6a 00                	push   $0x0
     e25:	6a 00                	push   $0x0
     e27:	eb da                	jmp    e03 <parseredirs+0x63>
     e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     e30:	8b 45 08             	mov    0x8(%ebp),%eax
     e33:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e36:	5b                   	pop    %ebx
     e37:	5e                   	pop    %esi
     e38:	5f                   	pop    %edi
     e39:	5d                   	pop    %ebp
     e3a:	c3                   	ret    
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
     e3b:	83 ec 0c             	sub    $0xc,%esp
     e3e:	68 6a 19 00 00       	push   $0x196a
     e43:	e8 58 fa ff ff       	call   8a0 <panic>
     e48:	90                   	nop
     e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e50 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 30             	sub    $0x30,%esp
     e59:	8b 75 08             	mov    0x8(%ebp),%esi
     e5c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     e5f:	68 8a 19 00 00       	push   $0x198a
     e64:	57                   	push   %edi
     e65:	56                   	push   %esi
     e66:	e8 c5 fe ff ff       	call   d30 <peek>
     e6b:	83 c4 10             	add    $0x10,%esp
     e6e:	85 c0                	test   %eax,%eax
     e70:	0f 85 9a 00 00 00    	jne    f10 <parseexec+0xc0>
    return parseblock(ps, es);

  ret = execcmd();
     e76:	e8 15 fc ff ff       	call   a90 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     e7b:	83 ec 04             	sub    $0x4,%esp
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     e7e:	89 c3                	mov    %eax,%ebx
     e80:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     e83:	57                   	push   %edi
     e84:	56                   	push   %esi
     e85:	8d 5b 04             	lea    0x4(%ebx),%ebx
     e88:	50                   	push   %eax
     e89:	e8 12 ff ff ff       	call   da0 <parseredirs>
     e8e:	83 c4 10             	add    $0x10,%esp
     e91:	89 45 d0             	mov    %eax,-0x30(%ebp)
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     e94:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     e9b:	eb 16                	jmp    eb3 <parseexec+0x63>
     e9d:	8d 76 00             	lea    0x0(%esi),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     ea0:	83 ec 04             	sub    $0x4,%esp
     ea3:	57                   	push   %edi
     ea4:	56                   	push   %esi
     ea5:	ff 75 d0             	pushl  -0x30(%ebp)
     ea8:	e8 f3 fe ff ff       	call   da0 <parseredirs>
     ead:	83 c4 10             	add    $0x10,%esp
     eb0:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     eb3:	83 ec 04             	sub    $0x4,%esp
     eb6:	68 a1 19 00 00       	push   $0x19a1
     ebb:	57                   	push   %edi
     ebc:	56                   	push   %esi
     ebd:	e8 6e fe ff ff       	call   d30 <peek>
     ec2:	83 c4 10             	add    $0x10,%esp
     ec5:	85 c0                	test   %eax,%eax
     ec7:	75 5f                	jne    f28 <parseexec+0xd8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     ec9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     ecc:	50                   	push   %eax
     ecd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     ed0:	50                   	push   %eax
     ed1:	57                   	push   %edi
     ed2:	56                   	push   %esi
     ed3:	e8 e8 fc ff ff       	call   bc0 <gettoken>
     ed8:	83 c4 10             	add    $0x10,%esp
     edb:	85 c0                	test   %eax,%eax
     edd:	74 49                	je     f28 <parseexec+0xd8>
      break;
    if(tok != 'a')
     edf:	83 f8 61             	cmp    $0x61,%eax
     ee2:	75 66                	jne    f4a <parseexec+0xfa>
      panic("syntax");
    cmd->argv[argc] = q;
     ee4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    cmd->eargv[argc] = eq;
    argc++;
     ee7:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
     eeb:	83 c3 04             	add    $0x4,%ebx
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     eee:	89 43 fc             	mov    %eax,-0x4(%ebx)
    cmd->eargv[argc] = eq;
     ef1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ef4:	89 43 24             	mov    %eax,0x24(%ebx)
    argc++;
     ef7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    if(argc >= MAXARGS)
     efa:	83 f8 0a             	cmp    $0xa,%eax
     efd:	75 a1                	jne    ea0 <parseexec+0x50>
      panic("too many args");
     eff:	83 ec 0c             	sub    $0xc,%esp
     f02:	68 93 19 00 00       	push   $0x1993
     f07:	e8 94 f9 ff ff       	call   8a0 <panic>
     f0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     f10:	83 ec 08             	sub    $0x8,%esp
     f13:	57                   	push   %edi
     f14:	56                   	push   %esi
     f15:	e8 56 01 00 00       	call   1070 <parseblock>
     f1a:	83 c4 10             	add    $0x10,%esp
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     f1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f20:	5b                   	pop    %ebx
     f21:	5e                   	pop    %esi
     f22:	5f                   	pop    %edi
     f23:	5d                   	pop    %ebp
     f24:	c3                   	ret    
     f25:	8d 76 00             	lea    0x0(%esi),%esi
     f28:	8b 45 cc             	mov    -0x34(%ebp),%eax
     f2b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f2e:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     f31:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     f38:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
     f3f:	8b 45 d0             	mov    -0x30(%ebp),%eax
  return ret;
}
     f42:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f45:	5b                   	pop    %ebx
     f46:	5e                   	pop    %esi
     f47:	5f                   	pop    %edi
     f48:	5d                   	pop    %ebp
     f49:	c3                   	ret    
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
     f4a:	83 ec 0c             	sub    $0xc,%esp
     f4d:	68 8c 19 00 00       	push   $0x198c
     f52:	e8 49 f9 ff ff       	call   8a0 <panic>
     f57:	89 f6                	mov    %esi,%esi
     f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000f60 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     f60:	55                   	push   %ebp
     f61:	89 e5                	mov    %esp,%ebp
     f63:	57                   	push   %edi
     f64:	56                   	push   %esi
     f65:	53                   	push   %ebx
     f66:	83 ec 14             	sub    $0x14,%esp
     f69:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f6c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     f6f:	56                   	push   %esi
     f70:	53                   	push   %ebx
     f71:	e8 da fe ff ff       	call   e50 <parseexec>
  if(peek(ps, es, "|")){
     f76:	83 c4 0c             	add    $0xc,%esp
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     f79:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     f7b:	68 a6 19 00 00       	push   $0x19a6
     f80:	56                   	push   %esi
     f81:	53                   	push   %ebx
     f82:	e8 a9 fd ff ff       	call   d30 <peek>
     f87:	83 c4 10             	add    $0x10,%esp
     f8a:	85 c0                	test   %eax,%eax
     f8c:	75 12                	jne    fa0 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     f8e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f91:	89 f8                	mov    %edi,%eax
     f93:	5b                   	pop    %ebx
     f94:	5e                   	pop    %esi
     f95:	5f                   	pop    %edi
     f96:	5d                   	pop    %ebp
     f97:	c3                   	ret    
     f98:	90                   	nop
     f99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     fa0:	6a 00                	push   $0x0
     fa2:	6a 00                	push   $0x0
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
     fa6:	e8 15 fc ff ff       	call   bc0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     fab:	58                   	pop    %eax
     fac:	5a                   	pop    %edx
     fad:	56                   	push   %esi
     fae:	53                   	push   %ebx
     faf:	e8 ac ff ff ff       	call   f60 <parsepipe>
     fb4:	89 7d 08             	mov    %edi,0x8(%ebp)
     fb7:	89 45 0c             	mov    %eax,0xc(%ebp)
     fba:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     fbd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc0:	5b                   	pop    %ebx
     fc1:	5e                   	pop    %esi
     fc2:	5f                   	pop    %edi
     fc3:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     fc4:	e9 47 fb ff ff       	jmp    b10 <pipecmd>
     fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000fd0 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     fd0:	55                   	push   %ebp
     fd1:	89 e5                	mov    %esp,%ebp
     fd3:	57                   	push   %edi
     fd4:	56                   	push   %esi
     fd5:	53                   	push   %ebx
     fd6:	83 ec 14             	sub    $0x14,%esp
     fd9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     fdc:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     fdf:	56                   	push   %esi
     fe0:	53                   	push   %ebx
     fe1:	e8 7a ff ff ff       	call   f60 <parsepipe>
  while(peek(ps, es, "&")){
     fe6:	83 c4 10             	add    $0x10,%esp
struct cmd*
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     fe9:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     feb:	eb 1b                	jmp    1008 <parseline+0x38>
     fed:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     ff0:	6a 00                	push   $0x0
     ff2:	6a 00                	push   $0x0
     ff4:	56                   	push   %esi
     ff5:	53                   	push   %ebx
     ff6:	e8 c5 fb ff ff       	call   bc0 <gettoken>
    cmd = backcmd(cmd);
     ffb:	89 3c 24             	mov    %edi,(%esp)
     ffe:	e8 8d fb ff ff       	call   b90 <backcmd>
    1003:	83 c4 10             	add    $0x10,%esp
    1006:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
    1008:	83 ec 04             	sub    $0x4,%esp
    100b:	68 a8 19 00 00       	push   $0x19a8
    1010:	56                   	push   %esi
    1011:	53                   	push   %ebx
    1012:	e8 19 fd ff ff       	call   d30 <peek>
    1017:	83 c4 10             	add    $0x10,%esp
    101a:	85 c0                	test   %eax,%eax
    101c:	75 d2                	jne    ff0 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    101e:	83 ec 04             	sub    $0x4,%esp
    1021:	68 a4 19 00 00       	push   $0x19a4
    1026:	56                   	push   %esi
    1027:	53                   	push   %ebx
    1028:	e8 03 fd ff ff       	call   d30 <peek>
    102d:	83 c4 10             	add    $0x10,%esp
    1030:	85 c0                	test   %eax,%eax
    1032:	75 0c                	jne    1040 <parseline+0x70>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
    1034:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1037:	89 f8                	mov    %edi,%eax
    1039:	5b                   	pop    %ebx
    103a:	5e                   	pop    %esi
    103b:	5f                   	pop    %edi
    103c:	5d                   	pop    %ebp
    103d:	c3                   	ret    
    103e:	66 90                	xchg   %ax,%ax
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    1040:	6a 00                	push   $0x0
    1042:	6a 00                	push   $0x0
    1044:	56                   	push   %esi
    1045:	53                   	push   %ebx
    1046:	e8 75 fb ff ff       	call   bc0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
    104b:	58                   	pop    %eax
    104c:	5a                   	pop    %edx
    104d:	56                   	push   %esi
    104e:	53                   	push   %ebx
    104f:	e8 7c ff ff ff       	call   fd0 <parseline>
    1054:	89 7d 08             	mov    %edi,0x8(%ebp)
    1057:	89 45 0c             	mov    %eax,0xc(%ebp)
    105a:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
    105d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1060:	5b                   	pop    %ebx
    1061:	5e                   	pop    %esi
    1062:	5f                   	pop    %edi
    1063:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
    1064:	e9 e7 fa ff ff       	jmp    b50 <listcmd>
    1069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001070 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
    1070:	55                   	push   %ebp
    1071:	89 e5                	mov    %esp,%ebp
    1073:	57                   	push   %edi
    1074:	56                   	push   %esi
    1075:	53                   	push   %ebx
    1076:	83 ec 10             	sub    $0x10,%esp
    1079:	8b 5d 08             	mov    0x8(%ebp),%ebx
    107c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    107f:	68 8a 19 00 00       	push   $0x198a
    1084:	56                   	push   %esi
    1085:	53                   	push   %ebx
    1086:	e8 a5 fc ff ff       	call   d30 <peek>
    108b:	83 c4 10             	add    $0x10,%esp
    108e:	85 c0                	test   %eax,%eax
    1090:	74 4a                	je     10dc <parseblock+0x6c>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
    1092:	6a 00                	push   $0x0
    1094:	6a 00                	push   $0x0
    1096:	56                   	push   %esi
    1097:	53                   	push   %ebx
    1098:	e8 23 fb ff ff       	call   bc0 <gettoken>
  cmd = parseline(ps, es);
    109d:	58                   	pop    %eax
    109e:	5a                   	pop    %edx
    109f:	56                   	push   %esi
    10a0:	53                   	push   %ebx
    10a1:	e8 2a ff ff ff       	call   fd0 <parseline>
  if(!peek(ps, es, ")"))
    10a6:	83 c4 0c             	add    $0xc,%esp
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
    10a9:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
    10ab:	68 c6 19 00 00       	push   $0x19c6
    10b0:	56                   	push   %esi
    10b1:	53                   	push   %ebx
    10b2:	e8 79 fc ff ff       	call   d30 <peek>
    10b7:	83 c4 10             	add    $0x10,%esp
    10ba:	85 c0                	test   %eax,%eax
    10bc:	74 2b                	je     10e9 <parseblock+0x79>
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
    10be:	6a 00                	push   $0x0
    10c0:	6a 00                	push   $0x0
    10c2:	56                   	push   %esi
    10c3:	53                   	push   %ebx
    10c4:	e8 f7 fa ff ff       	call   bc0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
    10c9:	83 c4 0c             	add    $0xc,%esp
    10cc:	56                   	push   %esi
    10cd:	53                   	push   %ebx
    10ce:	57                   	push   %edi
    10cf:	e8 cc fc ff ff       	call   da0 <parseredirs>
  return cmd;
}
    10d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10d7:	5b                   	pop    %ebx
    10d8:	5e                   	pop    %esi
    10d9:	5f                   	pop    %edi
    10da:	5d                   	pop    %ebp
    10db:	c3                   	ret    
parseblock(char **ps, char *es)
{
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
    10dc:	83 ec 0c             	sub    $0xc,%esp
    10df:	68 aa 19 00 00       	push   $0x19aa
    10e4:	e8 b7 f7 ff ff       	call   8a0 <panic>
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
    10e9:	83 ec 0c             	sub    $0xc,%esp
    10ec:	68 b5 19 00 00       	push   $0x19b5
    10f1:	e8 aa f7 ff ff       	call   8a0 <panic>
    10f6:	8d 76 00             	lea    0x0(%esi),%esi
    10f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001100 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	53                   	push   %ebx
    1104:	83 ec 04             	sub    $0x4,%esp
    1107:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    110a:	85 db                	test   %ebx,%ebx
    110c:	0f 84 96 00 00 00    	je     11a8 <nulterminate+0xa8>
    return 0;

  switch(cmd->type){
    1112:	83 3b 05             	cmpl   $0x5,(%ebx)
    1115:	77 48                	ja     115f <nulterminate+0x5f>
    1117:	8b 03                	mov    (%ebx),%eax
    1119:	ff 24 85 08 1a 00 00 	jmp    *0x1a08(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
    1120:	83 ec 0c             	sub    $0xc,%esp
    1123:	ff 73 04             	pushl  0x4(%ebx)
    1126:	e8 d5 ff ff ff       	call   1100 <nulterminate>
    nulterminate(lcmd->right);
    112b:	58                   	pop    %eax
    112c:	ff 73 08             	pushl  0x8(%ebx)
    112f:	e8 cc ff ff ff       	call   1100 <nulterminate>
    break;
    1134:	83 c4 10             	add    $0x10,%esp
    1137:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
    1139:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    113c:	c9                   	leave  
    113d:	c3                   	ret    
    113e:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
    1140:	8b 4b 04             	mov    0x4(%ebx),%ecx
    1143:	8d 43 2c             	lea    0x2c(%ebx),%eax
    1146:	85 c9                	test   %ecx,%ecx
    1148:	74 15                	je     115f <nulterminate+0x5f>
    114a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    1150:	8b 10                	mov    (%eax),%edx
    1152:	83 c0 04             	add    $0x4,%eax
    1155:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
    1158:	8b 50 d8             	mov    -0x28(%eax),%edx
    115b:	85 d2                	test   %edx,%edx
    115d:	75 f1                	jne    1150 <nulterminate+0x50>
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
    115f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
    1161:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1164:	c9                   	leave  
    1165:	c3                   	ret    
    1166:	8d 76 00             	lea    0x0(%esi),%esi
    1169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    1170:	83 ec 0c             	sub    $0xc,%esp
    1173:	ff 73 04             	pushl  0x4(%ebx)
    1176:	e8 85 ff ff ff       	call   1100 <nulterminate>
    break;
    117b:	89 d8                	mov    %ebx,%eax
    117d:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
    1180:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1183:	c9                   	leave  
    1184:	c3                   	ret    
    1185:	8d 76 00             	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    1188:	83 ec 0c             	sub    $0xc,%esp
    118b:	ff 73 04             	pushl  0x4(%ebx)
    118e:	e8 6d ff ff ff       	call   1100 <nulterminate>
    *rcmd->efile = 0;
    1193:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
    1196:	83 c4 10             	add    $0x10,%esp
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
    1199:	c6 00 00             	movb   $0x0,(%eax)
    break;
    119c:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
    119e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11a1:	c9                   	leave  
    11a2:	c3                   	ret    
    11a3:	90                   	nop
    11a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
    11a8:	31 c0                	xor    %eax,%eax
    11aa:	eb 8d                	jmp    1139 <nulterminate+0x39>
    11ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011b0 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
    11b0:	55                   	push   %ebp
    11b1:	89 e5                	mov    %esp,%ebp
    11b3:	56                   	push   %esi
    11b4:	53                   	push   %ebx
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
    11b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11b8:	83 ec 0c             	sub    $0xc,%esp
    11bb:	53                   	push   %ebx
    11bc:	e8 df 00 00 00       	call   12a0 <strlen>
  cmd = parseline(&s, es);
    11c1:	59                   	pop    %ecx
parsecmd(char *s)
{
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
    11c2:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
    11c4:	8d 45 08             	lea    0x8(%ebp),%eax
    11c7:	5e                   	pop    %esi
    11c8:	53                   	push   %ebx
    11c9:	50                   	push   %eax
    11ca:	e8 01 fe ff ff       	call   fd0 <parseline>
    11cf:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
    11d1:	8d 45 08             	lea    0x8(%ebp),%eax
    11d4:	83 c4 0c             	add    $0xc,%esp
    11d7:	68 2c 19 00 00       	push   $0x192c
    11dc:	53                   	push   %ebx
    11dd:	50                   	push   %eax
    11de:	e8 4d fb ff ff       	call   d30 <peek>
  if(s != es){
    11e3:	8b 45 08             	mov    0x8(%ebp),%eax
    11e6:	83 c4 10             	add    $0x10,%esp
    11e9:	39 c3                	cmp    %eax,%ebx
    11eb:	75 12                	jne    11ff <parsecmd+0x4f>
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
    11ed:	83 ec 0c             	sub    $0xc,%esp
    11f0:	56                   	push   %esi
    11f1:	e8 0a ff ff ff       	call   1100 <nulterminate>
  return cmd;
}
    11f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11f9:	89 f0                	mov    %esi,%eax
    11fb:	5b                   	pop    %ebx
    11fc:	5e                   	pop    %esi
    11fd:	5d                   	pop    %ebp
    11fe:	c3                   	ret    

  es = s + strlen(s);
  cmd = parseline(&s, es);
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
    11ff:	52                   	push   %edx
    1200:	50                   	push   %eax
    1201:	68 c8 19 00 00       	push   $0x19c8
    1206:	6a 02                	push   $0x2
    1208:	e8 b3 03 00 00       	call   15c0 <printf>
    panic("syntax");
    120d:	c7 04 24 8c 19 00 00 	movl   $0x198c,(%esp)
    1214:	e8 87 f6 ff ff       	call   8a0 <panic>
    1219:	66 90                	xchg   %ax,%ax
    121b:	66 90                	xchg   %ax,%ax
    121d:	66 90                	xchg   %ax,%ax
    121f:	90                   	nop

00001220 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	53                   	push   %ebx
    1224:	8b 45 08             	mov    0x8(%ebp),%eax
    1227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    122a:	89 c2                	mov    %eax,%edx
    122c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1230:	83 c1 01             	add    $0x1,%ecx
    1233:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1237:	83 c2 01             	add    $0x1,%edx
    123a:	84 db                	test   %bl,%bl
    123c:	88 5a ff             	mov    %bl,-0x1(%edx)
    123f:	75 ef                	jne    1230 <strcpy+0x10>
    ;
  return os;
}
    1241:	5b                   	pop    %ebx
    1242:	5d                   	pop    %ebp
    1243:	c3                   	ret    
    1244:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    124a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001250 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1250:	55                   	push   %ebp
    1251:	89 e5                	mov    %esp,%ebp
    1253:	56                   	push   %esi
    1254:	53                   	push   %ebx
    1255:	8b 55 08             	mov    0x8(%ebp),%edx
    1258:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    125b:	0f b6 02             	movzbl (%edx),%eax
    125e:	0f b6 19             	movzbl (%ecx),%ebx
    1261:	84 c0                	test   %al,%al
    1263:	75 1e                	jne    1283 <strcmp+0x33>
    1265:	eb 29                	jmp    1290 <strcmp+0x40>
    1267:	89 f6                	mov    %esi,%esi
    1269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1270:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1273:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1276:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1279:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    127d:	84 c0                	test   %al,%al
    127f:	74 0f                	je     1290 <strcmp+0x40>
    1281:	89 f1                	mov    %esi,%ecx
    1283:	38 d8                	cmp    %bl,%al
    1285:	74 e9                	je     1270 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1287:	29 d8                	sub    %ebx,%eax
}
    1289:	5b                   	pop    %ebx
    128a:	5e                   	pop    %esi
    128b:	5d                   	pop    %ebp
    128c:	c3                   	ret    
    128d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1290:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1292:	29 d8                	sub    %ebx,%eax
}
    1294:	5b                   	pop    %ebx
    1295:	5e                   	pop    %esi
    1296:	5d                   	pop    %ebp
    1297:	c3                   	ret    
    1298:	90                   	nop
    1299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000012a0 <strlen>:

uint
strlen(char *s)
{
    12a0:	55                   	push   %ebp
    12a1:	89 e5                	mov    %esp,%ebp
    12a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    12a6:	80 39 00             	cmpb   $0x0,(%ecx)
    12a9:	74 12                	je     12bd <strlen+0x1d>
    12ab:	31 d2                	xor    %edx,%edx
    12ad:	8d 76 00             	lea    0x0(%esi),%esi
    12b0:	83 c2 01             	add    $0x1,%edx
    12b3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    12b7:	89 d0                	mov    %edx,%eax
    12b9:	75 f5                	jne    12b0 <strlen+0x10>
    ;
  return n;
}
    12bb:	5d                   	pop    %ebp
    12bc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    12bd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    12bf:	5d                   	pop    %ebp
    12c0:	c3                   	ret    
    12c1:	eb 0d                	jmp    12d0 <memset>
    12c3:	90                   	nop
    12c4:	90                   	nop
    12c5:	90                   	nop
    12c6:	90                   	nop
    12c7:	90                   	nop
    12c8:	90                   	nop
    12c9:	90                   	nop
    12ca:	90                   	nop
    12cb:	90                   	nop
    12cc:	90                   	nop
    12cd:	90                   	nop
    12ce:	90                   	nop
    12cf:	90                   	nop

000012d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	57                   	push   %edi
    12d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    12d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    12da:	8b 45 0c             	mov    0xc(%ebp),%eax
    12dd:	89 d7                	mov    %edx,%edi
    12df:	fc                   	cld    
    12e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    12e2:	89 d0                	mov    %edx,%eax
    12e4:	5f                   	pop    %edi
    12e5:	5d                   	pop    %ebp
    12e6:	c3                   	ret    
    12e7:	89 f6                	mov    %esi,%esi
    12e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012f0 <strchr>:

char*
strchr(const char *s, char c)
{
    12f0:	55                   	push   %ebp
    12f1:	89 e5                	mov    %esp,%ebp
    12f3:	53                   	push   %ebx
    12f4:	8b 45 08             	mov    0x8(%ebp),%eax
    12f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    12fa:	0f b6 10             	movzbl (%eax),%edx
    12fd:	84 d2                	test   %dl,%dl
    12ff:	74 1d                	je     131e <strchr+0x2e>
    if(*s == c)
    1301:	38 d3                	cmp    %dl,%bl
    1303:	89 d9                	mov    %ebx,%ecx
    1305:	75 0d                	jne    1314 <strchr+0x24>
    1307:	eb 17                	jmp    1320 <strchr+0x30>
    1309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1310:	38 ca                	cmp    %cl,%dl
    1312:	74 0c                	je     1320 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    1314:	83 c0 01             	add    $0x1,%eax
    1317:	0f b6 10             	movzbl (%eax),%edx
    131a:	84 d2                	test   %dl,%dl
    131c:	75 f2                	jne    1310 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    131e:	31 c0                	xor    %eax,%eax
}
    1320:	5b                   	pop    %ebx
    1321:	5d                   	pop    %ebp
    1322:	c3                   	ret    
    1323:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001330 <gets>:

char*
gets(char *buf, int max)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	57                   	push   %edi
    1334:	56                   	push   %esi
    1335:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1336:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    1338:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    133b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    133e:	eb 29                	jmp    1369 <gets+0x39>
    cc = read(0, &c, 1);
    1340:	83 ec 04             	sub    $0x4,%esp
    1343:	6a 01                	push   $0x1
    1345:	57                   	push   %edi
    1346:	6a 00                	push   $0x0
    1348:	e8 2d 01 00 00       	call   147a <read>
    if(cc < 1)
    134d:	83 c4 10             	add    $0x10,%esp
    1350:	85 c0                	test   %eax,%eax
    1352:	7e 1d                	jle    1371 <gets+0x41>
      break;
    buf[i++] = c;
    1354:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1358:	8b 55 08             	mov    0x8(%ebp),%edx
    135b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    135d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    135f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    1363:	74 1b                	je     1380 <gets+0x50>
    1365:	3c 0d                	cmp    $0xd,%al
    1367:	74 17                	je     1380 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1369:	8d 5e 01             	lea    0x1(%esi),%ebx
    136c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    136f:	7c cf                	jl     1340 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1371:	8b 45 08             	mov    0x8(%ebp),%eax
    1374:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1378:	8d 65 f4             	lea    -0xc(%ebp),%esp
    137b:	5b                   	pop    %ebx
    137c:	5e                   	pop    %esi
    137d:	5f                   	pop    %edi
    137e:	5d                   	pop    %ebp
    137f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1380:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1383:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1385:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1389:	8d 65 f4             	lea    -0xc(%ebp),%esp
    138c:	5b                   	pop    %ebx
    138d:	5e                   	pop    %esi
    138e:	5f                   	pop    %edi
    138f:	5d                   	pop    %ebp
    1390:	c3                   	ret    
    1391:	eb 0d                	jmp    13a0 <stat>
    1393:	90                   	nop
    1394:	90                   	nop
    1395:	90                   	nop
    1396:	90                   	nop
    1397:	90                   	nop
    1398:	90                   	nop
    1399:	90                   	nop
    139a:	90                   	nop
    139b:	90                   	nop
    139c:	90                   	nop
    139d:	90                   	nop
    139e:	90                   	nop
    139f:	90                   	nop

000013a0 <stat>:

int
stat(char *n, struct stat *st)
{
    13a0:	55                   	push   %ebp
    13a1:	89 e5                	mov    %esp,%ebp
    13a3:	56                   	push   %esi
    13a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    13a5:	83 ec 08             	sub    $0x8,%esp
    13a8:	6a 00                	push   $0x0
    13aa:	ff 75 08             	pushl  0x8(%ebp)
    13ad:	e8 f0 00 00 00       	call   14a2 <open>
  if(fd < 0)
    13b2:	83 c4 10             	add    $0x10,%esp
    13b5:	85 c0                	test   %eax,%eax
    13b7:	78 27                	js     13e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    13b9:	83 ec 08             	sub    $0x8,%esp
    13bc:	ff 75 0c             	pushl  0xc(%ebp)
    13bf:	89 c3                	mov    %eax,%ebx
    13c1:	50                   	push   %eax
    13c2:	e8 f3 00 00 00       	call   14ba <fstat>
    13c7:	89 c6                	mov    %eax,%esi
  close(fd);
    13c9:	89 1c 24             	mov    %ebx,(%esp)
    13cc:	e8 b9 00 00 00       	call   148a <close>
  return r;
    13d1:	83 c4 10             	add    $0x10,%esp
    13d4:	89 f0                	mov    %esi,%eax
}
    13d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    13d9:	5b                   	pop    %ebx
    13da:	5e                   	pop    %esi
    13db:	5d                   	pop    %ebp
    13dc:	c3                   	ret    
    13dd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    13e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    13e5:	eb ef                	jmp    13d6 <stat+0x36>
    13e7:	89 f6                	mov    %esi,%esi
    13e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000013f0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    13f0:	55                   	push   %ebp
    13f1:	89 e5                	mov    %esp,%ebp
    13f3:	53                   	push   %ebx
    13f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    13f7:	0f be 11             	movsbl (%ecx),%edx
    13fa:	8d 42 d0             	lea    -0x30(%edx),%eax
    13fd:	3c 09                	cmp    $0x9,%al
    13ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1404:	77 1f                	ja     1425 <atoi+0x35>
    1406:	8d 76 00             	lea    0x0(%esi),%esi
    1409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1410:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1413:	83 c1 01             	add    $0x1,%ecx
    1416:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    141a:	0f be 11             	movsbl (%ecx),%edx
    141d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1420:	80 fb 09             	cmp    $0x9,%bl
    1423:	76 eb                	jbe    1410 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    1425:	5b                   	pop    %ebx
    1426:	5d                   	pop    %ebp
    1427:	c3                   	ret    
    1428:	90                   	nop
    1429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001430 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1430:	55                   	push   %ebp
    1431:	89 e5                	mov    %esp,%ebp
    1433:	56                   	push   %esi
    1434:	53                   	push   %ebx
    1435:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1438:	8b 45 08             	mov    0x8(%ebp),%eax
    143b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    143e:	85 db                	test   %ebx,%ebx
    1440:	7e 14                	jle    1456 <memmove+0x26>
    1442:	31 d2                	xor    %edx,%edx
    1444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1448:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    144c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    144f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1452:	39 da                	cmp    %ebx,%edx
    1454:	75 f2                	jne    1448 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    1456:	5b                   	pop    %ebx
    1457:	5e                   	pop    %esi
    1458:	5d                   	pop    %ebp
    1459:	c3                   	ret    

0000145a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    145a:	b8 01 00 00 00       	mov    $0x1,%eax
    145f:	cd 40                	int    $0x40
    1461:	c3                   	ret    

00001462 <exit>:
SYSCALL(exit)
    1462:	b8 02 00 00 00       	mov    $0x2,%eax
    1467:	cd 40                	int    $0x40
    1469:	c3                   	ret    

0000146a <wait>:
SYSCALL(wait)
    146a:	b8 03 00 00 00       	mov    $0x3,%eax
    146f:	cd 40                	int    $0x40
    1471:	c3                   	ret    

00001472 <pipe>:
SYSCALL(pipe)
    1472:	b8 04 00 00 00       	mov    $0x4,%eax
    1477:	cd 40                	int    $0x40
    1479:	c3                   	ret    

0000147a <read>:
SYSCALL(read)
    147a:	b8 05 00 00 00       	mov    $0x5,%eax
    147f:	cd 40                	int    $0x40
    1481:	c3                   	ret    

00001482 <write>:
SYSCALL(write)
    1482:	b8 10 00 00 00       	mov    $0x10,%eax
    1487:	cd 40                	int    $0x40
    1489:	c3                   	ret    

0000148a <close>:
SYSCALL(close)
    148a:	b8 15 00 00 00       	mov    $0x15,%eax
    148f:	cd 40                	int    $0x40
    1491:	c3                   	ret    

00001492 <kill>:
SYSCALL(kill)
    1492:	b8 06 00 00 00       	mov    $0x6,%eax
    1497:	cd 40                	int    $0x40
    1499:	c3                   	ret    

0000149a <exec>:
SYSCALL(exec)
    149a:	b8 07 00 00 00       	mov    $0x7,%eax
    149f:	cd 40                	int    $0x40
    14a1:	c3                   	ret    

000014a2 <open>:
SYSCALL(open)
    14a2:	b8 0f 00 00 00       	mov    $0xf,%eax
    14a7:	cd 40                	int    $0x40
    14a9:	c3                   	ret    

000014aa <mknod>:
SYSCALL(mknod)
    14aa:	b8 11 00 00 00       	mov    $0x11,%eax
    14af:	cd 40                	int    $0x40
    14b1:	c3                   	ret    

000014b2 <unlink>:
SYSCALL(unlink)
    14b2:	b8 12 00 00 00       	mov    $0x12,%eax
    14b7:	cd 40                	int    $0x40
    14b9:	c3                   	ret    

000014ba <fstat>:
SYSCALL(fstat)
    14ba:	b8 08 00 00 00       	mov    $0x8,%eax
    14bf:	cd 40                	int    $0x40
    14c1:	c3                   	ret    

000014c2 <link>:
SYSCALL(link)
    14c2:	b8 13 00 00 00       	mov    $0x13,%eax
    14c7:	cd 40                	int    $0x40
    14c9:	c3                   	ret    

000014ca <mkdir>:
SYSCALL(mkdir)
    14ca:	b8 14 00 00 00       	mov    $0x14,%eax
    14cf:	cd 40                	int    $0x40
    14d1:	c3                   	ret    

000014d2 <chdir>:
SYSCALL(chdir)
    14d2:	b8 09 00 00 00       	mov    $0x9,%eax
    14d7:	cd 40                	int    $0x40
    14d9:	c3                   	ret    

000014da <dup>:
SYSCALL(dup)
    14da:	b8 0a 00 00 00       	mov    $0xa,%eax
    14df:	cd 40                	int    $0x40
    14e1:	c3                   	ret    

000014e2 <getpid>:
SYSCALL(getpid)
    14e2:	b8 0b 00 00 00       	mov    $0xb,%eax
    14e7:	cd 40                	int    $0x40
    14e9:	c3                   	ret    

000014ea <sbrk>:
SYSCALL(sbrk)
    14ea:	b8 0c 00 00 00       	mov    $0xc,%eax
    14ef:	cd 40                	int    $0x40
    14f1:	c3                   	ret    

000014f2 <sleep>:
SYSCALL(sleep)
    14f2:	b8 0d 00 00 00       	mov    $0xd,%eax
    14f7:	cd 40                	int    $0x40
    14f9:	c3                   	ret    

000014fa <uptime>:
SYSCALL(uptime)
    14fa:	b8 0e 00 00 00       	mov    $0xe,%eax
    14ff:	cd 40                	int    $0x40
    1501:	c3                   	ret    

00001502 <remVariable>:
SYSCALL(remVariable)
    1502:	b8 19 00 00 00       	mov    $0x19,%eax
    1507:	cd 40                	int    $0x40
    1509:	c3                   	ret    

0000150a <getVariable>:
SYSCALL(getVariable)
    150a:	b8 18 00 00 00       	mov    $0x18,%eax
    150f:	cd 40                	int    $0x40
    1511:	c3                   	ret    

00001512 <setVariable>:
SYSCALL(setVariable)
    1512:	b8 17 00 00 00       	mov    $0x17,%eax
    1517:	cd 40                	int    $0x40
    1519:	c3                   	ret    
    151a:	66 90                	xchg   %ax,%ax
    151c:	66 90                	xchg   %ax,%ax
    151e:	66 90                	xchg   %ax,%ax

00001520 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1520:	55                   	push   %ebp
    1521:	89 e5                	mov    %esp,%ebp
    1523:	57                   	push   %edi
    1524:	56                   	push   %esi
    1525:	53                   	push   %ebx
    1526:	89 c6                	mov    %eax,%esi
    1528:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    152b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    152e:	85 db                	test   %ebx,%ebx
    1530:	74 7e                	je     15b0 <printint+0x90>
    1532:	89 d0                	mov    %edx,%eax
    1534:	c1 e8 1f             	shr    $0x1f,%eax
    1537:	84 c0                	test   %al,%al
    1539:	74 75                	je     15b0 <printint+0x90>
    neg = 1;
    x = -xx;
    153b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    153d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    1544:	f7 d8                	neg    %eax
    1546:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1549:	31 ff                	xor    %edi,%edi
    154b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    154e:	89 ce                	mov    %ecx,%esi
    1550:	eb 08                	jmp    155a <printint+0x3a>
    1552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1558:	89 cf                	mov    %ecx,%edi
    155a:	31 d2                	xor    %edx,%edx
    155c:	8d 4f 01             	lea    0x1(%edi),%ecx
    155f:	f7 f6                	div    %esi
    1561:	0f b6 92 28 1a 00 00 	movzbl 0x1a28(%edx),%edx
  }while((x /= base) != 0);
    1568:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    156a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    156d:	75 e9                	jne    1558 <printint+0x38>
  if(neg)
    156f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1572:	8b 75 c0             	mov    -0x40(%ebp),%esi
    1575:	85 c0                	test   %eax,%eax
    1577:	74 08                	je     1581 <printint+0x61>
    buf[i++] = '-';
    1579:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    157e:	8d 4f 02             	lea    0x2(%edi),%ecx
    1581:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    1585:	8d 76 00             	lea    0x0(%esi),%esi
    1588:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    158b:	83 ec 04             	sub    $0x4,%esp
    158e:	83 ef 01             	sub    $0x1,%edi
    1591:	6a 01                	push   $0x1
    1593:	53                   	push   %ebx
    1594:	56                   	push   %esi
    1595:	88 45 d7             	mov    %al,-0x29(%ebp)
    1598:	e8 e5 fe ff ff       	call   1482 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    159d:	83 c4 10             	add    $0x10,%esp
    15a0:	39 df                	cmp    %ebx,%edi
    15a2:	75 e4                	jne    1588 <printint+0x68>
    putc(fd, buf[i]);
}
    15a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    15a7:	5b                   	pop    %ebx
    15a8:	5e                   	pop    %esi
    15a9:	5f                   	pop    %edi
    15aa:	5d                   	pop    %ebp
    15ab:	c3                   	ret    
    15ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    15b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    15b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    15b9:	eb 8b                	jmp    1546 <printint+0x26>
    15bb:	90                   	nop
    15bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	57                   	push   %edi
    15c4:	56                   	push   %esi
    15c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    15c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    15c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    15cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    15cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    15d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    15d5:	0f b6 1e             	movzbl (%esi),%ebx
    15d8:	83 c6 01             	add    $0x1,%esi
    15db:	84 db                	test   %bl,%bl
    15dd:	0f 84 b0 00 00 00    	je     1693 <printf+0xd3>
    15e3:	31 d2                	xor    %edx,%edx
    15e5:	eb 39                	jmp    1620 <printf+0x60>
    15e7:	89 f6                	mov    %esi,%esi
    15e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    15f0:	83 f8 25             	cmp    $0x25,%eax
    15f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    15f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    15fb:	74 18                	je     1615 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    15fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1600:	83 ec 04             	sub    $0x4,%esp
    1603:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    1606:	6a 01                	push   $0x1
    1608:	50                   	push   %eax
    1609:	57                   	push   %edi
    160a:	e8 73 fe ff ff       	call   1482 <write>
    160f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1612:	83 c4 10             	add    $0x10,%esp
    1615:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1618:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    161c:	84 db                	test   %bl,%bl
    161e:	74 73                	je     1693 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    1620:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    1622:	0f be cb             	movsbl %bl,%ecx
    1625:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1628:	74 c6                	je     15f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    162a:	83 fa 25             	cmp    $0x25,%edx
    162d:	75 e6                	jne    1615 <printf+0x55>
      if(c == 'd'){
    162f:	83 f8 64             	cmp    $0x64,%eax
    1632:	0f 84 f8 00 00 00    	je     1730 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1638:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    163e:	83 f9 70             	cmp    $0x70,%ecx
    1641:	74 5d                	je     16a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1643:	83 f8 73             	cmp    $0x73,%eax
    1646:	0f 84 84 00 00 00    	je     16d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    164c:	83 f8 63             	cmp    $0x63,%eax
    164f:	0f 84 ea 00 00 00    	je     173f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1655:	83 f8 25             	cmp    $0x25,%eax
    1658:	0f 84 c2 00 00 00    	je     1720 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    165e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1661:	83 ec 04             	sub    $0x4,%esp
    1664:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1668:	6a 01                	push   $0x1
    166a:	50                   	push   %eax
    166b:	57                   	push   %edi
    166c:	e8 11 fe ff ff       	call   1482 <write>
    1671:	83 c4 0c             	add    $0xc,%esp
    1674:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1677:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    167a:	6a 01                	push   $0x1
    167c:	50                   	push   %eax
    167d:	57                   	push   %edi
    167e:	83 c6 01             	add    $0x1,%esi
    1681:	e8 fc fd ff ff       	call   1482 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1686:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    168a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    168d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    168f:	84 db                	test   %bl,%bl
    1691:	75 8d                	jne    1620 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1693:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1696:	5b                   	pop    %ebx
    1697:	5e                   	pop    %esi
    1698:	5f                   	pop    %edi
    1699:	5d                   	pop    %ebp
    169a:	c3                   	ret    
    169b:	90                   	nop
    169c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    16a0:	83 ec 0c             	sub    $0xc,%esp
    16a3:	b9 10 00 00 00       	mov    $0x10,%ecx
    16a8:	6a 00                	push   $0x0
    16aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    16ad:	89 f8                	mov    %edi,%eax
    16af:	8b 13                	mov    (%ebx),%edx
    16b1:	e8 6a fe ff ff       	call   1520 <printint>
        ap++;
    16b6:	89 d8                	mov    %ebx,%eax
    16b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    16bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    16bd:	83 c0 04             	add    $0x4,%eax
    16c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    16c3:	e9 4d ff ff ff       	jmp    1615 <printf+0x55>
    16c8:	90                   	nop
    16c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    16d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    16d3:	8b 18                	mov    (%eax),%ebx
        ap++;
    16d5:	83 c0 04             	add    $0x4,%eax
    16d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    16db:	b8 20 1a 00 00       	mov    $0x1a20,%eax
    16e0:	85 db                	test   %ebx,%ebx
    16e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    16e5:	0f b6 03             	movzbl (%ebx),%eax
    16e8:	84 c0                	test   %al,%al
    16ea:	74 23                	je     170f <printf+0x14f>
    16ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    16f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    16f6:	83 ec 04             	sub    $0x4,%esp
    16f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    16fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    16fe:	50                   	push   %eax
    16ff:	57                   	push   %edi
    1700:	e8 7d fd ff ff       	call   1482 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    1705:	0f b6 03             	movzbl (%ebx),%eax
    1708:	83 c4 10             	add    $0x10,%esp
    170b:	84 c0                	test   %al,%al
    170d:	75 e1                	jne    16f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    170f:	31 d2                	xor    %edx,%edx
    1711:	e9 ff fe ff ff       	jmp    1615 <printf+0x55>
    1716:	8d 76 00             	lea    0x0(%esi),%esi
    1719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1720:	83 ec 04             	sub    $0x4,%esp
    1723:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1726:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1729:	6a 01                	push   $0x1
    172b:	e9 4c ff ff ff       	jmp    167c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1730:	83 ec 0c             	sub    $0xc,%esp
    1733:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1738:	6a 01                	push   $0x1
    173a:	e9 6b ff ff ff       	jmp    16aa <printf+0xea>
    173f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1742:	83 ec 04             	sub    $0x4,%esp
    1745:	8b 03                	mov    (%ebx),%eax
    1747:	6a 01                	push   $0x1
    1749:	88 45 e4             	mov    %al,-0x1c(%ebp)
    174c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    174f:	50                   	push   %eax
    1750:	57                   	push   %edi
    1751:	e8 2c fd ff ff       	call   1482 <write>
    1756:	e9 5b ff ff ff       	jmp    16b6 <printf+0xf6>
    175b:	66 90                	xchg   %ax,%ax
    175d:	66 90                	xchg   %ax,%ax
    175f:	90                   	nop

00001760 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1760:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1761:	a1 44 22 00 00       	mov    0x2244,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1766:	89 e5                	mov    %esp,%ebp
    1768:	57                   	push   %edi
    1769:	56                   	push   %esi
    176a:	53                   	push   %ebx
    176b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    176e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1770:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1773:	39 c8                	cmp    %ecx,%eax
    1775:	73 19                	jae    1790 <free+0x30>
    1777:	89 f6                	mov    %esi,%esi
    1779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1780:	39 d1                	cmp    %edx,%ecx
    1782:	72 1c                	jb     17a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1784:	39 d0                	cmp    %edx,%eax
    1786:	73 18                	jae    17a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1788:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    178a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    178c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    178e:	72 f0                	jb     1780 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1790:	39 d0                	cmp    %edx,%eax
    1792:	72 f4                	jb     1788 <free+0x28>
    1794:	39 d1                	cmp    %edx,%ecx
    1796:	73 f0                	jae    1788 <free+0x28>
    1798:	90                   	nop
    1799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    17a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    17a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    17a6:	39 d7                	cmp    %edx,%edi
    17a8:	74 19                	je     17c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    17aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    17ad:	8b 50 04             	mov    0x4(%eax),%edx
    17b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    17b3:	39 f1                	cmp    %esi,%ecx
    17b5:	74 23                	je     17da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    17b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    17b9:	a3 44 22 00 00       	mov    %eax,0x2244
}
    17be:	5b                   	pop    %ebx
    17bf:	5e                   	pop    %esi
    17c0:	5f                   	pop    %edi
    17c1:	5d                   	pop    %ebp
    17c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    17c3:	03 72 04             	add    0x4(%edx),%esi
    17c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    17c9:	8b 10                	mov    (%eax),%edx
    17cb:	8b 12                	mov    (%edx),%edx
    17cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    17d0:	8b 50 04             	mov    0x4(%eax),%edx
    17d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    17d6:	39 f1                	cmp    %esi,%ecx
    17d8:	75 dd                	jne    17b7 <free+0x57>
    p->s.size += bp->s.size;
    17da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    17dd:	a3 44 22 00 00       	mov    %eax,0x2244
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    17e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    17e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    17e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    17ea:	5b                   	pop    %ebx
    17eb:	5e                   	pop    %esi
    17ec:	5f                   	pop    %edi
    17ed:	5d                   	pop    %ebp
    17ee:	c3                   	ret    
    17ef:	90                   	nop

000017f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    17f0:	55                   	push   %ebp
    17f1:	89 e5                	mov    %esp,%ebp
    17f3:	57                   	push   %edi
    17f4:	56                   	push   %esi
    17f5:	53                   	push   %ebx
    17f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    17f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    17fc:	8b 15 44 22 00 00    	mov    0x2244,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1802:	8d 78 07             	lea    0x7(%eax),%edi
    1805:	c1 ef 03             	shr    $0x3,%edi
    1808:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    180b:	85 d2                	test   %edx,%edx
    180d:	0f 84 a3 00 00 00    	je     18b6 <malloc+0xc6>
    1813:	8b 02                	mov    (%edx),%eax
    1815:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1818:	39 cf                	cmp    %ecx,%edi
    181a:	76 74                	jbe    1890 <malloc+0xa0>
    181c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1822:	be 00 10 00 00       	mov    $0x1000,%esi
    1827:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    182e:	0f 43 f7             	cmovae %edi,%esi
    1831:	ba 00 80 00 00       	mov    $0x8000,%edx
    1836:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    183c:	0f 46 da             	cmovbe %edx,%ebx
    183f:	eb 10                	jmp    1851 <malloc+0x61>
    1841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1848:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    184a:	8b 48 04             	mov    0x4(%eax),%ecx
    184d:	39 cf                	cmp    %ecx,%edi
    184f:	76 3f                	jbe    1890 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1851:	39 05 44 22 00 00    	cmp    %eax,0x2244
    1857:	89 c2                	mov    %eax,%edx
    1859:	75 ed                	jne    1848 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    185b:	83 ec 0c             	sub    $0xc,%esp
    185e:	53                   	push   %ebx
    185f:	e8 86 fc ff ff       	call   14ea <sbrk>
  if(p == (char*)-1)
    1864:	83 c4 10             	add    $0x10,%esp
    1867:	83 f8 ff             	cmp    $0xffffffff,%eax
    186a:	74 1c                	je     1888 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    186c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    186f:	83 ec 0c             	sub    $0xc,%esp
    1872:	83 c0 08             	add    $0x8,%eax
    1875:	50                   	push   %eax
    1876:	e8 e5 fe ff ff       	call   1760 <free>
  return freep;
    187b:	8b 15 44 22 00 00    	mov    0x2244,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1881:	83 c4 10             	add    $0x10,%esp
    1884:	85 d2                	test   %edx,%edx
    1886:	75 c0                	jne    1848 <malloc+0x58>
        return 0;
    1888:	31 c0                	xor    %eax,%eax
    188a:	eb 1c                	jmp    18a8 <malloc+0xb8>
    188c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1890:	39 cf                	cmp    %ecx,%edi
    1892:	74 1c                	je     18b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1894:	29 f9                	sub    %edi,%ecx
    1896:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1899:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    189c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    189f:	89 15 44 22 00 00    	mov    %edx,0x2244
      return (void*)(p + 1);
    18a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    18a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18ab:	5b                   	pop    %ebx
    18ac:	5e                   	pop    %esi
    18ad:	5f                   	pop    %edi
    18ae:	5d                   	pop    %ebp
    18af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    18b0:	8b 08                	mov    (%eax),%ecx
    18b2:	89 0a                	mov    %ecx,(%edx)
    18b4:	eb e9                	jmp    189f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    18b6:	c7 05 44 22 00 00 48 	movl   $0x2248,0x2244
    18bd:	22 00 00 
    18c0:	c7 05 48 22 00 00 48 	movl   $0x2248,0x2248
    18c7:	22 00 00 
    base.s.size = 0;
    18ca:	b8 48 22 00 00       	mov    $0x2248,%eax
    18cf:	c7 05 4c 22 00 00 00 	movl   $0x0,0x224c
    18d6:	00 00 00 
    18d9:	e9 3e ff ff ff       	jmp    181c <malloc+0x2c>
