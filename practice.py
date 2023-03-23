lst=[54,57,34]
print(lst)

def maximum():
    max=0
    s_max=0
    for i in range(len(lst)):
        if lst[i] >= max:
            max = lst[i]

    for i in range(len(lst)):
        if lst[i]!=max and lst[i]>=s_max:
                 s_max=lst[i]


    return max, s_max
print(lst)
print("max is", maximum())



# palingdrom
# n='101'
#
# lst=list(n)
# print(lst)
#
# def pal(n):
#     return n==n[::-1]
#
# print("pal",pal(n))

# class A:
#     variable='A'
#
# class B:
#     variable='B'
#
# class C:
#     variable='C'
#
# class D(B,A,C):  #Method recognism order(MRO)
#     def __init__(self):
#         print(self.variable)
#
#
# k=D()




































