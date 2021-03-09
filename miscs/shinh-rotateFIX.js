// no ES6 arrow functions smh my head
s=readline()
l=s.length
a=s.replace(/ /g,'').split('')
print(s.replace(/\S/g,function(){a.push(a.shift());return a[0]}))

// Try 2:
s=readline()
for(i=0,l=s.length;i<l;)putstr(' '==(x=s[++i%l])?s[++i]+" ":x)