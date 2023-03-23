sellersNo = int(input("enter no. of sellers"))
buyerNo = int(input("enter no. of buyers"))
print("\nseller cost and machines details:")
sellerCost = []
sellerDist = {}
for i in range(sellersNo):
    print((i + 1), " seller details:")
    cost = int(input("enter cost"))
    vm = int(input("enter no. of Machines"))
    sellerCost.append(cost)
    sellerDist[cost] = vm
    print()

print("----------------------------------------")
print("\nbuyer cost and machines details:")
buyerCost = []
buyerDist = {}

for i in range(buyerNo):
    print((i + 1), " buyer details:")
    cost = int(input("enter cost"))
    vm = int(input("enter no. of Machines"))
    buyerCost.append(cost)
    buyerDist[cost] = vm
    print()

sellerCost.sort()
buyerCost.sort(reverse=True)

print(sellerCost)
print(sellerDist)
print(buyerCost)
print(buyerDist)
buyerProfit = 0
sellerProfit = 0
buyerMin = 65535
sellerMax = 0
check = False

for i in range(0, len(buyerCost)):
    if check == True:
        i -= 1
        check = False
    for j in range(0, len(sellerCost)):
        buyerKey = buyerCost[i]
        sellerKey = sellerCost[j]
        if sellerDist[sellerKey] >= buyerDist[buyerKey]:
            if buyerMin > buyerKey:
                buyerMin = buyerKey
            if sellerMax < sellerKey:
                 sellerMax = sellerKey
            Bprofit = buyerKey - sellerKey
            if Bprofit > 0:
                buyerProfit += Bprofit
            Sprofit = sellerKey - buyerKey
            if Sprofit > 0:
                sellerProfit += Sprofit
            buyerDist.pop(buyerKey)
            del buyerCost[i]
            check = True
            break
# end of for loop of j
# end of for loop of i
print("\n seller max=", sellerMax)
print("average profit of seller = ", sellerProfit / 2)
print("\n buyer min=", buyerMin)
print("average profit of buyer = ", buyerProfit / 2)

