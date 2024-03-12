#!/usr/bin/env python
# coding: utf-8

# In[67]:


import numpy as np
import random as rn


# In[139]:


arr_one=np.array([1,2,3,4])
arr_two=np.array([5,6,7,8])


# In[140]:


for i in range(len(arr_one)):
    print(arr_one[i],end=' ')
arr_one[2]


# In[63]:


arr_three=np.empty((0,),dtype=int)
for i in range(len(arr_one)):
    arr_three=np.append(arr_three,int(arr_one[i]+arr_two[i]))
arr_three


# In[65]:


print(len(arr_three))


# In[114]:


arr_four=np.empty((0,),dtype=int)
for i in range(20):
    arr_four=np.append(arr_four,rn.randint(1,10))
arr_four


# In[115]:


def max_array(temp):
    return temp.max()
max_array(arr_four)


# In[116]:


def rever_arr(temp):
    len_arr=len(temp)
    reverse_arr=np.empty((0,),dtype=int)
    for i in range(len_arr):
        len_arr=len_arr-1
        reverse_arr=np.append(reverse_arr,temp[len_arr])
    return reverse_arr
print(rever_arr(arr_four))
print(arr_four[::-1])


# In[129]:


def remove_duplicates(temp):
    len_arr=len(temp)
    rmv_dup=np.empty([],dtype=int)
    for i in range(len_arr):
        if(temp[i] not in rmv_dup):
            rmv_dup=np.append(rmv_dup,temp[i])
    return rmv_dup
print(remove_duplicates(arr_four))
rmv_dup=np.unique(arr_four)
print(rmv_dup)


# In[134]:


print(11 in arr_four)


# In[146]:


arr_five=rmv_dup
arr_five
def multiply_arr(num,arr):
    multiply_arr=np.empty((0,),dtype=int)
    for i in range(len(arr)):
        multiply_arr=np.append(multiply_arr,num*arr[i])
    return multiply_arr
multiply_arr(5,arr_five)


# In[150]:


print(multiply_arr(5,arr_five).sum())


# In[163]:


def avg(arr):
    len_arr=len(arr)
    temp=0
    for i in range(len_arr):
        temp=temp+arr[i]
    return temp/len_arr
print(round(avg(multiply_arr(5,arr_five)),2))
print(round(multiply_arr(5,arr_five).mean(),2))


# In[177]:


def search_index(num,temp):
    for i in range(len(temp)):
        if num ==temp[i]:
            return i
    return "Not in array"
print(search_index(arr_four.max(),arr_four))
print(np.argmax(arr_four))


# In[208]:


arr_six=remove_duplicates(arr_four)
arr_six.sort()
arr_six=arr_six[::-1]


# In[209]:


concat_array=np.append(arr_six,arr_five)
print(concat_array)

