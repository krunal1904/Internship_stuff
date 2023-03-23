csp={22:20,18:15}
user={16:7,25:19}
list_csp=[]
list_user=[]
for i,j in csp.items():
    print("csp wants to sell",j," vms at ",i,"price")
    list_csp.append(i)
for i,j in user.items():
    print("user wants to buy",j," vms at ",i,"price")
    list_user.append(i)

list_csp.sort() #sorting according price
list_user.sort(reverse=True)

print(list_csp,"selling price")
print(list_user,"bidding prices")


allo={} #allocation with actual price
allo_wp={} #allocation with expected price
seller={}  #selling with actual price
seller_wp={}  #selling with expected price

print("strategy -2")
csp={22:20,18:15}
user={16:7,25:19}
list_csp=[]
list_user=[]
for i,j in csp.items():
    print("csp wants to sell",j," vms at ",i,"price")
    list_csp.append(i)
for i,j in user.items():
    print("user wants to buy",j," vms at ",i,"price")
    list_user.append(i)

list_csp.sort() #sorting according price
list_user.sort()

print(list_csp,"selling price")
print(list_user,"bidding prices")

max_buyers=list_user[0]
for i in range(len(list_user)):
    if max_buyers<list_user[i]:
        max_buyers=list_user[i]
print(max_buyers,"is maximum bid for users")

min_seller=list_csp[0]
for j in range(len(list_csp)):
    if min_seller>list_csp[j]:
        min_seller=list_csp[j]
print(min_seller,"is mminimum value for seller")

for i in list_user:
    for j,k in user.items():
        if i==j:
            print(k,"to buy")
            for l in list_csp:
                for m,n in csp.items():
                    if l==m:
                        print(n,"to sell")
                        if k<=n:
                            csp[m]=n-k
                            allo[k]=min_seller
                            allo_wp[k]=j
                            seller[k]=min_seller
                            seller_wp[k]=m
                            print(allo,"allocated")
                            print(seller,"sold")
                        else:
                            print("no allocation")

print()
print(csp,"csp remaining")
for i, j in seller.items():                                           #print(seller,"finally sold out")
    print("csp sold", i, " vms at ", j, "price")
for i, j in allo.items():                                             #print(allo,"finally allocated")
    print("user bought", i, " vms at ", j, "price")

print("--------------")
print("profit in this trade:")
e1=0
a=0
for i,j in seller.items():
    e1+=(i*j)
    a+=1

n1=0    #seller profit
for i,j in seller_wp.items():
    n1+=(i*j)
profit_seller=(e1-n1)/a
print("avg Profit for seller is",profit_seller)


e2=0  #buyer profit
b=0
for k,l in allo.items():
    e2+=(k*l)
    b+=1
expected_buyer=0

for k,l in allo_wp.items():
    expected_buyer+=(k*l)
buyer_profit=(e2-expected_buyer)/b
print("avg Profit for buyer is",buyer_profit)

payment_to_seller=e1
print("payment to seller:",e1)

payment_to_buyer=e2
print("paymnet to buyer:",e2)
broker_profit=e1-e2
print("profit of broker is:-",broker_profit)