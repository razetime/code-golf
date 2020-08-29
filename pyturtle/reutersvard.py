from turtle import *
def draw():
    a=['#2e6f6e','#FAD028','#E44834']
    pu()
    ht()
    speed(0)
    for m in range(3):
     lt(120);fd(30);lt(60);fd(30);lt(60)
     for k in range(3):
      for j in range(3):
       color(a[j]);begin_fill()
       for i in range(4):fd(20);rt(120 if i%2==0 else 60)
       end_fill();lt(120)
      if k==1:rt(180);fd(30);lt(180)
      else:rt(60);fd(30);lt(60)
     a=a[2:]+a[:2]
    lt(120)
    fd(30)
    lt(60)
    fd(10)
    a=[a[2],a[1]]
    for k in range(2):
     color(a[k]);begin_fill()
     for i in range(3):fd(20);rt(120)
     end_fill();lt(60)
    ontimer(stop, 7000)

running = True
FRAMES_PER_SECOND = 10

def stop():
    global running

    running = False

def save(counter=[1]):
    getcanvas().postscript(file = "iceland{0:03d}.eps".format(counter[0]))
    counter[0] += 1
    if running:
        ontimer(save, int(1000 / FRAMES_PER_SECOND))

save()  # start the recording

ontimer(draw, 500)  # start the program (1/2 second leader)

done()