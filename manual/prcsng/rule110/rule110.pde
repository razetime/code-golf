size(400,500);
int a[][] = new int[100][101];
int c=98,b=99;
background(255);
for(int j=1;j<a.length+1;j++){
  a[0][j]=0;
}
a[0][c]=a[0][b]=1;
for(int j=1;j<a.length;j++){
  a[j][0]=0;
  for(int k=1;k<a.length;k++) {
    int x=a[j-1][k-1];
    int y=a[j-1][k];
    int z=a[j-1][k+1];
    if((x==1 && y==1 && z==1)||(x==1 &&y==0&&z==0)||(x==0 && y==0 && z==0)){
      a[j][k]=0;
    }
    else if((x==1 && y==1 && z==0)||(x==1 &&y==0&&z==1)||(x==0 && y==1 && z==1)||(x==0&&y==1&&z==0)||(x==0 && y==0 && z==1)){
      a[j][k]=1;
    }
  }
}
noStroke();

for(int j=1;j<a.length;j++) {
  for(int k=0;k<a.length;k++) {
    print(a[j][k]);
    if(a[j][k]==1){fill(k,j,k);
    rect(k*4,j*5,4,5);
    }
  }
  print('\n');
  
}
save("rule110.png");
