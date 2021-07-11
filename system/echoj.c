// echoj
// An enhanced batch "echo" command that allows
// data to be written to or appended to a file.  Binary characters
// can be specified in hex notation with a leading '$' symbol.
//
// License: MIT / X11
// Copyright (c) 2009 by James K. Lawless
// jimbo@radiks.net http://www.radiks.net/~jimbo
// http://www.mailsend-online.com
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.


#include <stdio.h>
#include <string.h>
#include <ctype.h>

void syntax(void);

int main(int argc,char **argv) {
   FILE *out;
   char *fileName;
   char *fileMode;
   int firstString;
   int i;
   char hexWrk[3];
   int c;
   
   
   if(argc<2) {
      syntax();
      return 1;
   }
   out=stdout;
   fileName=NULL;
   fileMode="w";
   
   for(i=1;i<argc;i++) {
      if(*argv[i]!='-') {
         firstString=i;
         break;
      }
      switch( *(argv[i]+1)) {
         case 'v':
         case 'V':
            if(i==(argc-1)) {
               fprintf(stderr,"Missing argument for -v parameter");
               return 1;
            }
	    return atoi(argv[i+1]);
            break;
         case 'f':
         case 'F':
            if(i==(argc-1)) {
               fprintf(stderr,"Missing argument for -f parameter");
               return 1;
            }
            fileName=argv[i+1];
            i++;
            break;
         case 'm':
         case 'M':
            if(i==(argc-1)) {
               fprintf(stderr,"Missing argument for -m parameter");
               return 1;
            }
            fileMode=argv[i+1];
            i++;
            break;
      }
   }
   
   if(fileName!=NULL) {
      out=fopen(fileName,fileMode);
      if(out==NULL) {
         fprintf(stderr,"Unable to open file %s in mode %s\n",fileName,fileMode);
         return 1;
      }
   }
      // now, process the rest of the strings as output.
   for(i=firstString;i<argc;i++) {
      if(* (argv[i])=='$') {
         if(strlen(argv[i])==3) {
            hexWrk[0]=*(argv[i]+1);
            hexWrk[1]=*(argv[i]+2);
            hexWrk[2]=0;
            sscanf(hexWrk,"%02x",&c);
            fputc(c,out);
            continue;
         }
      }
      fwrite(argv[i],1,strlen(argv[i]),out);         
   }   
   if(fileName!=NULL) 
      fclose(out);
   return 0;
}

void syntax(void) {
   printf("echoj   by Jim Lawless   jimbo@radiks.net\n");
   printf("Syntax:\techoj [ -f filename -m file-open-mode -v verification-int ] strings\n");
   printf("\n");
   printf("Valid file open modes:\n");
   printf("   \"a\"    Append to specified file in text mode.\n");
   printf("   \"ab\"   Append to specified file in binary mode.\n");
   printf("   \"w\"    (default) Write (overwrite) specified file in text mode.\n");
   printf("   \"wb\"   Write (overwrite) specified file in binary mode.\n\n");
   printf("If -f is not specified, output is written to standard output.\n");
   printf("Strings should be in double-quotes if they contain spaces.\n\n");
   printf("Binary characters can be specified in two-digit hexadecimal notation\n");
   printf("using a '$' at the beginning.\n\n");
   printf("Example:\n");
   printf("echoj \"Here are greater-than and less-than signs: \" $3c \" \" $3e $0a\n\n");
   printf("For more information, including documentation for the -v option,\n");
   printf("please read the related blog post at this shortened URL:\nhttp://bit.ly/2eqbvR\n");
}
