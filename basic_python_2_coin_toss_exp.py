import random
import statistics as st
import numpy as np
n=int(input("enter number of times experiment to be performed "))
a=0
b=0
c=0
d=0
e=[]

while n>0:
	r1=random.randint(1,2)
	r1=(r1%2) #0 means HEAD and 1 means TAIL
	r2=random.randint(1,2)
	r2=(r2%2)
	if(r1==0 and r2==0): # H H
		a=a+1
	elif(r1==0 and r2==1): # H T
		b=b+1
	elif(r1==1 and r2==1): #T T
		c=c+1
	else: #T H
		d=d+1
	n=n-1;

e.append(a)
e.append(b)
e.append(c)
e.append(d)
f=st.stdev(e)
g=st.mean(e)
print("HH ",a)
print("HT ",b)
print("TT ",c)
print("TH ",d)
print("standard deviation/mean is equal to ",f/g)


