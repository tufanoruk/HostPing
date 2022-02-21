/**
 * hostping.c
 *
 * Wrapper program to run hostping.pl script as root with setuid for apache.
 *
 * Use an extention to define as runnable cgi
 * gcc -o hostping.ks hostping.c
 *
 * chown root.root hostping.ks
 * chmod 4755 hostping.ks
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

const char* hostping = "./hostping.pl";

int main(int ac, char** av) 
{
  int size = 0;
  int i = 0;
  // calculate memory to allocate
  for (i = 1; i < ac; ++i) {
  	size += strlen (av[i]+1+1); // space + \0
  }
  char  *cmd = malloc (size + strlen(hostping) + 1);
  int n = 0;
  n += sprintf (cmd+n, "%s ", hostping);
  for (i = 1; i < ac; ++i) {
  	n += sprintf (cmd+n, "%s ", av[i]);
  }  
  setuid ( 0 );
  
  FILE* pipe = popen(cmd, "r");
  if (pipe == NULL) {
    fprintf(stderr, "Failed to run command\n" );
    return -1;
  }
  char line[1024] = {0};
  /* Read the output a line at a time - output it. */
  while (fgets(line, sizeof(line)-1, pipe) != NULL) {
    printf("%s", line);
  }
  pclose(pipe);
  return 0;
}
