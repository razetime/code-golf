void c(int n,int p){for(int i=1;i<n;)line(p*i,0,0,p*(n-i++));}

// non-working recursive implementation
//void d(int n,int p){
//  int a= 0;
//  a=(a<n)?n:n+1;
//  if(n!=0){
//     line(p*n,0,0,p*(a-n));
//     d(n-1,p);
//  }
  
//}

void setup() {
  size(500,500);
   c(25,15); 
   c(6,72);
}
