a=10;
puts a%2==0?" ^":"   ^";f=->n{puts"#{["/!\\\n---^","  /!\\\n ^---"][n%2]}\n";(n>1)?f[n-1]:puts(" -")}
f[a]