#for i in range(int(input())):a=[*map(int,input().split())][1:];print('%.3f%%'%(sum(x>sum(a)/len(a) for x in a)/len(a)*100)) # 123
#for i in range(int(input())):a=[*map(int,input().split())][1:];l=len(a);print('%.3f%%'%(sum(x>sum(a)/l for x in a)/l*100))  # 122
#for i in range(int(input())):b,*a=[*map(int,input().split())];print('%.3f%%'%(sum(x>sum(a)/b for x in a)/b*100))            # 112
#exec("b,*a=[*map(int,input().split())];print('%.3f%%'%(sum(x>sum(a)/b for x in a)/b*100))"*int(input()))                    # 104 (error)
#input()
#while 1:b,*a=[*map(int,input().split())];print('%.3f%%'%(sum(x>sum(a)/b for x in a)/b*100))                                 # 99 (error)
#k=int(input())
#while k:b,*a=[*map(int,input().split())];print(f'{sum(x>sum(a)/b for x in a)/b:.3%}');k-=1                                  # 105
exec("b,*a=[*map(int,input().split())];print(f'{sum(x>sum(a)/b for x in a)/b:.3%}');"*int(input()))                          # 99 working
#exec(bytes('Ɫ愪嬽洪灡椨瑮椬灮瑵⤨献汰瑩⤨崩瀻楲瑮昨笧畳⡭㹸畳⡭⥡戯映牯砠椠⁮⥡戯⸺┳❽㬩','u16')[2:]*int(input()))                   # 77 (chars)
