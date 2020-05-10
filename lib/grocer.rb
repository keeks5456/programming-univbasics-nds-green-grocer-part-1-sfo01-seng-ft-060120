require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length 
    if collection[counter][:item] == name 
      return collection[counter]
    end
      counter += 1
  end
end
#iterating through our collection
# if at the collection[index] the [:item] matches the name 
# we must return that collectionat the [index] it was found
# example: if the name is "Avocado" the result shoud be {:item => "AVOCADO", :price => 3.00, :clearance => true }



def consolidate_cart(cart)
new_cart = [] 
counter = 0 
while counter < cart.length
new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
if new_cart_item != nil
  new_cart_item[:count] += 1 
else 
  new_cart_item = {
    :item => cart[counter][:item],
    :price => cart[counter][:price],
    :clearance => cart[counter][:clearance],
    :count => 1
  }
  new_cart << new_cart_item
    end
  counter += 1
  end
   new_cart
end
# return [{:item => "NAME", :price => "PRICE", :clearance = "BOOLEN", :count = "NUMBER"}]
# {:item => "KALE", :price => 3.00, :clearance => false, :count => 1}


# we need to make a new array to store our hash of food items
# iterating over our cart length.
#  we need to check if our item already exist in new_cart
# declare a new variable (new_cart_item) and assign it to the find_item_by_name_in_collection(name, collection) ==> where the (name) will be cart[counter][:item] and the (collection) will be our new_cart
# we need to check for existing items in new_cart if any 
# new_cart_item will either return the item if found or it will return nil
# if new_cart_item != nil then we access new_cart_item[:count] and increase by 1 
# otherwise if is false (nil), we need to create item 
# new_cart_item will be an empty hash with the item price clearance and count built in

# we then shovel new_cart_item to new_cart
# we increase our counter by 1 each iteration
#we lastly call new_cart