// Shell.
#include "types.h"
#include "user.h"
#include "fcntl.h"

// Parsed command representation
#define EXEC  1
#define REDIR 2
#define PIPE  3
#define LIST  4
#define BACK  5

#define MAXARGS 10

#define MAX_HISTORY 16

struct command {
  char com[128];
};

struct command history[MAX_HISTORY];
int nextfree = 0;


#define MAX_VARIABLES 32

struct shortcut1{
  char var[32];
  char val[128];
};

struct shortcut1 shortcuts1[MAX_VARIABLES];
int num_of_shortcuts1 = 0;

int 
remVariable1(char* variable) {
  int index = 0;
  int flag = 1;
  for(int i = 0; i < num_of_shortcuts1; i++) {
    for(int k = 0; k < 32; k++)
      if(flag == 0 || (shortcuts1[i].var[k] != variable[k] && 
        ((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')))) {
        flag = 0;
        index = i;
      }
  }
  if(flag == 1) {
    for(int i = index; i < num_of_shortcuts1 - 1; i++) {
      for(int k = 0; k < 128; k++)
        shortcuts1[i].val[k] = shortcuts1[i + 1].val[k];
      for(int k = 0; k < 32; k++)
        shortcuts1[i].var[k] = shortcuts1[i + 1].var[k];
    }
    num_of_shortcuts1 -= 1;
    return 0;
  }
  return -1;
}

int
getVariable1(char* variable, char* value) {
  for(int i = 0; i < num_of_shortcuts1; i++) {
    int flag = 1;
    int k = 0;
    while((variable[k] >= 'a' && variable[k] <= 'z') || (variable[k] >= 'A' && variable[k] <= 'Z')) {
      printf(2, "shortcuts1[%d].var: %s\n", i, shortcuts1[i].var);
      if(shortcuts1[i].var[k] != variable[k])
         flag = 0;
      k++;
    }
   printf(2, "var get: %s\n", variable);

    if(flag == 1) {
      for(int k = 0; k < 128; k++)
        value[k] = shortcuts1[i].val[k];
      return 0;
    }
  }
  return -1;
}

int 
setVariable1(char* variable, char* value) {
  if(num_of_shortcuts1 < 31) {
    //remVariable1(variable);
    printf(2, "var added: %s\n", variable);
    for(int k = 0; k < 128; k++)
      shortcuts1[num_of_shortcuts1].val[k] = value[k];
    for(int k = 0; k < 32; k++)
      shortcuts1[num_of_shortcuts1].var[k] = variable[k];
    num_of_shortcuts1++;
    return 0;
  }
  return -1;
}

//fix buffer if there is a need and return 1 if there is no need return 0
void
fix_buffer(char* buf) {
   int flag = 1;
   char tmp_buf[128];
   int buf_index = 0;
   flag = 0;
   printf(2, "buf: %s\n", buf);
   for(int i = 0; i < 128; i++) {
      if(buf[i] == '$') {
         char value[128];
         char variable[32];
         flag = 1;
         int k = 1;
         while((buf[i + k] >= 'a' && buf[i + k] <= 'z') || (buf[i + k] >= 'A' && buf[i + k] <= 'Z')) {
            variable[k - 1] = buf[i + k];
            k++;
         }
         int t = getVariable1(variable, value);
         printf(2, "var: %s\n", variable);
         printf(2, "val: %s\n", value);
         printf(2, "t: %d\n", t);

         if(t == 0) {
            i = i + k;
            int j = 0;
            while (value[j] != 0) {
               tmp_buf[buf_index] = value[j];
               buf_index++;
               j++;
            }          
         }
      }
      tmp_buf[buf_index] = buf[i];
      buf_index++;
   }
   if(flag == 1) 
      for(int i = 0; i < 128; i++)
         buf[i] = tmp_buf[i];
}


void 
push_history(char* data) {
   if(nextfree == MAX_HISTORY)
      for(int i = 1; i < MAX_HISTORY; i++)
         for(int k = 0; k < 128; k++) 
            history[i].com[k] = history[i - 1].com[k];
   else
      nextfree += 1;
   for(int k = 0; k < 128; k++) 
      history[nextfree].com[k] = data[k];
}

char* 
get_line(int index) {
   return history[nextfree - index].com;
}

void 
print_history() {
   for(int i = 0; i < nextfree; i++) 
      printf(2, "%s\n", history[i].com);
   nextfree = 0;
   printf(2, "history\n");
}

//prints history if the buffer says so, returns 1 if printed or 0 if not.
int
history_support(char* buf) {
   if(buf[0] == 'h' && buf[1] == 'i' && buf[2] == 's' && buf[3] == 't' && buf[4] == 'o' && buf[5] == 'r' && buf[6] == 'y') {
      if (buf[8] == '-' && buf[9] =='l') {
         int line_num;
         char* line;
         if(buf[12] > 47 && buf[12] < 58)
            line_num = 10 * (buf[11] - 48) + (buf[12] - 48);
         else
            line_num  = buf[11] - 48;
         line = get_line(line_num);
         for(int i = 0; i < 128; i++)
            buf[i] = line[i];
         return 0;
      }
      else 
         print_history();
      return 1; 
   }
   return 0;
}

struct cmd {
  int type;
};


struct execcmd {
  int type;
  char *argv[MAXARGS];
  char *eargv[MAXARGS];
};

struct redircmd {
  int type;
  struct cmd *cmd;
  char *file;
  char *efile;
  int mode;
  int fd;
};

struct pipecmd {
  int type;
  struct cmd *left;
  struct cmd *right;
};

struct listcmd {
  int type;
  struct cmd *left;
  struct cmd *right;
};

struct backcmd {
  int type;
  struct cmd *cmd;
};

int fork1(void);  // Fork but panics on failure.
void panic(char*);
struct cmd *parsecmd(char*);

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
  int p[2];
  struct backcmd *bcmd;
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    exit();

  switch(cmd->type){
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
      exit();
    exec(ecmd->argv[0], ecmd->argv);
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
      exit();
    }
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
      runcmd(lcmd->left);
    wait();
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
      close(1);
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
      close(0);
      dup(p[0]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->right);
    }
    close(p[0]);
    close(p[1]);
    wait();
    wait();
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
    break;
  }
  exit();
}

int
getcmd(char *buf, int nbuf)
{
  printf(2, "$ ");
  memset(buf, 0, nbuf);
  gets(buf, nbuf);
  if(buf[0] == 0) // EOF
    return -1;
  return 0;
}

int
main(void) {
   static char buf[161];
   int fd;

   // Ensure that three file descriptors are open.
   while((fd = open("console", O_RDWR)) >= 0){
      if(fd >= 3){
         close(fd);
         break;
      }
   }

   // Read and run input commands.
   while(getcmd(buf, sizeof(buf)) >= 0) {

      if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' ') {
         // Chdir must be called by the parent, not the child.
         buf[strlen(buf)-1] = 0;  // chop \n
         if(chdir(buf+3) < 0)
            printf(2, "cannot cd %s\n", buf + 3);
         continue;
      }

      char value[128];
      char variable[32];
      int index = 0, flag = 0;

      for(int i = 0; i < sizeof(buf); i++) {
         if(buf[i] == '=') {
            flag = 1;
            index = i;
         }
         if(flag == 0)
            variable[i] = buf[i];
         if(flag == 1 && buf[i] != '=')   
            value[i - index - 1] = buf[i];
      }

      fix_buffer(buf);

      if(flag == 1) 
         setVariable1(variable, value);

      push_history(buf);

      int history_flag = history_support(buf);

      if(fork1() == 0) 
         if(flag == 0 && history_flag == 0)
            runcmd(parsecmd(buf));
      wait();
      }
   exit();
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
  exit();
}

int
fork1(void)
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
  return pid;
}

//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = EXEC;
  return (struct cmd*)cmd;
}

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
  cmd->cmd = subcmd;
  cmd->file = file;
  cmd->efile = efile;
  cmd->mode = mode;
  cmd->fd = fd;
  return (struct cmd*)cmd;
}

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
  cmd->left = left;
  cmd->right = right;
  return (struct cmd*)cmd;
}

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
  cmd->left = left;
  cmd->right = right;
  return (struct cmd*)cmd;
}

struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
  cmd->cmd = subcmd;
  return (struct cmd*)cmd;
}
//PAGEBREAK!
// Parsing

char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
  case 0:
    break;
  case '|':
  case '(':
  case ')':
  case ';':
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
    s++;
  *ps = s;
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
    s++;
  *ps = s;
  return *s && strchr(toks, *s);
}

struct cmd *parseline(char**, char*);
struct cmd *parsepipe(char**, char*);
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
  cmd = parseline(&s, es);
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
  cmd = parseredirs(cmd, ps, es);
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
  int i;
  struct backcmd *bcmd;
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    nulterminate(pcmd->left);
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
