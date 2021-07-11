// Change the output color for the Windows console
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

#include <windows.h>
#include <stdio.h>
#include <string.h>

void *getConsoleFunction(char *name);

BOOL (WINAPI *doSetConsoleTextAttribute)(HANDLE hConsoleOutput, WORD attr);


int main(int argc,char **argv) {
   HANDLE hCon;
   WORD color;
   
   if(argc<2) {
      fprintf(stderr,"chgcolor - Change console text color - by Jim Lawless\n\n");
      fprintf(stderr,"Syntax:\n\tchgcolor attribute\n\n");
      fprintf(stderr,"See:\nhttp://www.mailsend-online.com/blog/?p=77\nfor usage instructions and C source code.\n");
      return 1;
   }
   sscanf(argv[1],"%x",&color);
   
   hCon=GetStdHandle(STD_OUTPUT_HANDLE);
   
   doSetConsoleTextAttribute=getConsoleFunction("SetConsoleTextAttribute");

   if(doSetConsoleTextAttribute==NULL) {
      fprintf(stderr,"Sorry! chgcolor is incompatible with this version of Windows.");
      return 1;
   }   
   (*doSetConsoleTextAttribute)(hCon,color);

   return 0;
}

void *getConsoleFunction(char *name) {
   static HMODULE kernel32=(HMODULE)0xffffffff;
   if(kernel32==0)
      return NULL;
   if(kernel32==(HMODULE)0xffffffff) {
      kernel32=LoadLibrary("kernel32.dll");
      if(kernel32==0)
         return 0;         
   }
   return GetProcAddress(kernel32,name);
}
