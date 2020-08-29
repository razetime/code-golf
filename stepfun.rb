#Not sure what this is
f=->a,b{a==0 ? b : (b<1/3 ? (0.5*f[a,3*b] ? (b<2/3 ? 0.5 : 0.5 + 0.5*f[a,3*b+2]):()):())}
