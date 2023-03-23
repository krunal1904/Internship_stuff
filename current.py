# Example data
sellers = {'A': 200, 'B': 80, 'C': 120} # Seller name: Resources available
buyers = {'X': 150, 'Y': 100, 'Z': 300} # Buyer name: Maximum price willing to pay

# Step 1: Sort sellers in ascending order of bid
sorted_sellers = sorted(sellers.items(), key=lambda x: x[1])

# Step 2: Sort buyers in descending order of bid
sorted_buyers = sorted(buyers.items(), key=lambda x: x[1], reverse=True)
print(sorted_sellers)
print(sorted_buyers)

# Step 3: Allocate resources to buyers
allocations = {} # Buyer name: (Seller name, resources allocated)
for buyer, max_price in sorted_buyers:
    for seller, resources in sorted_sellers:
        if resources >= max_price:
            allocations[buyer] = (seller, max_price)
            sellers[seller] -= max_price
            break
print(allocations)
print(seller,buyer)
# Step 4: Calculate price to be paid by each buyer
prices = [allocation[1] for allocation in allocations.values()]
price_to_pay = min(prices)

# Step 5: Calculate payment received by sellers
payment_received = 0
for seller, resources in sellers.items():
    if resources < 100: # We assume a maintenance cost of 100 per seller
        payment_received += resources
    else:
        payment_received += 100

# Calculate average profit of buyers and sellers
average_buyer_profit = (price_to_pay - payment_received) / len(buyers)
average_seller_profit = (payment_received - sum(sellers.values())) / len(sellers)

print("Average profit of buyers:", average_buyer_profit)
print("Average profit of sellers:", average_seller_profit)