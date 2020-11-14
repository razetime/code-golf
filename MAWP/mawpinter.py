#Ver 0.1
from time import sleep
def buildsquarebracemap(code):
   temp_bracestack, bracemap = [], {}
   for position, command in enumerate(code):
       if command == "[": temp_bracestack.append(position)
       if command == "]":
           start = temp_bracestack.pop()
           bracemap[start] = position
           bracemap[position] = start
   return bracemap
def buildcurlybracemap(code):
   temp_bracestack, bracemap = [], {}
   for position, command in enumerate(code):
       if command == "(": temp_bracestack.append(position)
       if command == ")":
           start = temp_bracestack.pop()
           bracemap[start] = position
           bracemap[position] = start
   return bracemap
def buildlongcondmap(code):
   temp_bracestack, bracemap = [], {}
   for position, command in enumerate(code):
       if command == "<": temp_bracestack.append(position)
       if command == ">":
           start = temp_bracestack.pop()
           bracemap[start] = position
           bracemap[position] = start
   return bracemap
def run_mawp(code,input_,debug=False, delay=0.1):
   formatted_input = list(input_)
   pos = 0
   stack = [1]
   squarebracemap = buildsquarebracemap(code)
   curlybracemap = buildcurlybracemap(code)
   longcondmap = buildlongcondmap(code)
   while True:
       char = code[pos]
       if debug:print(stack, char)
       if char == 'M':
           top = int(stack[-1])
           stack.pop(-1)
           sec = int(stack[-1])
           stack.pop(-1)
           stack.append(top+sec)
       elif char == 'A':
           top = int(stack[-1])
           stack.pop(-1)
           sec = int(stack[-1])
           stack.pop(-1)
           stack.append(abs(sec-top))
       elif char == 'W':
           top = int(stack[-1])
           stack.pop(-1)
           sec = int(stack[-1])
           stack.pop(-1)
           stack.append(top*sec)
       elif char == 'P':
           top = int(stack[-1])
           stack.pop(-1)
           sec = int(stack[-1])
           stack.pop(-1)
           stack.append(int(sec//top))
       elif char in ['0','1','2','3','4','5','6','7','8','9']:
           stack.append(char)
       elif char == '%':
           stack.pop(-1)
       elif char == '!':
           stack.append(stack[-1])
       elif char == ':':
           top = int(stack[-1])
           stack.pop(-1)
           print(str(top),end='')
       elif char == ';':
           top = int(stack[-1])
           stack.pop(-1)
           print(str(chr(top)),end='')
       elif char == '.':
           return 0
       elif char == ']':
           if stack[-1] != 0:
               pos = squarebracemap[pos]
       elif char == '[':
           if stack[-1] == 0:
               pos = squarebracemap[pos]
       elif char == ')':
           if stack[-1] == 0:
               pos = curlybracemap[pos]
       elif char == '(':
           if stack[-1] != 0:
               pos = curlybracemap[pos]
       elif char == '?':
           if stack[-1] != 0:
               pos += 1
       elif char == '|':
           stack.extend([ord(x) for x in formatted_input])
       elif char == '~':
           stack = list(reversed(stack))
       elif char == '<':
           if stack[-1] != 0:
               pos = longcondmap[pos]
       elif char == '_':
           stack.append(len(stack))
       pos += 1
       sleep(delay)
        

code = "|;."
input_ = ""
DEBUG = False
DELAY = 0

try:
    run_mawp(code,input_,DEBUG,DELAY)
except:
    raise Exception("MAWP MAWP MAWP")