#include <stdio.h>
char* entry(char* s,char t,int n) {
while(*s)/*https://bit.ly/3wnHS7w*/
                                  {
if(*s==t)
                                  {
for(int i=0;i<n;i++)
                                  {
if(*(s+i)!=t) /*https://bit.ly/3rO42fE*/
                                  {

s+=n-1;
goto O;
                                  }
                                  }
return s; /*https://bit.ly/39EilgL*/
                                  }
O:
s++;/*https://bit.ly/2PRbDNx*/
                                  }
return s;
                                  }
int main() {
    char* res = entry("cadaadddr", 'd',3 );
    printf("got %s", res);
}
