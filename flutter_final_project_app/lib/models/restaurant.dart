import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/food.dart';
import 'cart_item.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu

  final List<Food> _menu =[
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheeseburger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/baconburger.png",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "Hearty veggie patty with avocado, lettuce, tomato on a whole grain bun.",
      imagePath: "lib/images/burgers/hamburger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description: "Juicy pineapple, tangy teriyaki sauce, crisp lettuce, all between fluffy buns.",
      imagePath: "lib/images/burgers/alohaburger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description: "Savor the rich, savory blend of blue cheese, caramelized onions, and beef on this burger!",
      imagePath: "lib/images/burgers/foodphoto.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Double Cheeseburger",
      description: "Two juicy beef patties with melted cheese, lettuce, tomatoes, tangy sauce on soft buns.",
      imagePath: "lib/images/burgers/doubleCheeseburger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 1.49),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),


    //salads
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/caesar.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Mexican Corn Salad",
      description: "Grilled corn, black beans, red bell pepper, avocado, cilantro, lime dressing.",
      imagePath: "lib/images/salads/MexicanCornSalad.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Mediterranean Salad",
      description: "Fresh greens, tomatoes, cucumbers, olives, red onions, feta cheese, lemon-herb dressing.",
      imagePath: "lib/images/salads/Mediterranean_Salad.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Anchovies", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Kalamata Olives", price: 1.49),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
      imagePath: "lib/images/salads/greek.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),


    Food(
      name: "Quionoa Salad",
      description: "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/quinoa.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Nicoise Salad",
      description: "Tuna, greens, potatoes, beans, tomatoes, eggs, olives, anchovies, vinaigrette.",
      imagePath: "lib/images/salads/Nicoise_Salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled Eggs", price: 0.99),
        Addon(name: "Radishes", price: 1.49),
        Addon(name: "Kalamata Olives", price: 1.49),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description: "Crunchy veggies, tender meat, tangy dressing. Simply delicious blend!",
      imagePath: "lib/images/salads/asiansalad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Silvers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Thai Beef Salad",
      description: "Grilled beef, mixed greens, tomatoes, cucumber, red onion, mint, spicy lime dressing.",
      imagePath: "lib/images/salads/ThaiBeefSalad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Anchovies", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Kalamata Olives", price: 1.49),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description: "Chicken, beans, corn, avocado, tomatoes, lettuce, dressing. Delicious mix!",
      imagePath: "lib/images/salads/southwest.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Guacamole", price: 1.99),
      ],
    ),


    //sides

    Food(
      name: "Roasted Brussels Sprouts",
      description: "Salted and roasted for a crispy, flavorful experience, perfect as a side or appetizer.",
      imagePath: "lib/images/sides/Roasted_Brussels_Sprouts.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Balsamic Glaze", price: 0.99),
        Addon(name: "Honey Mustard Dressing", price: 1.49),
        Addon(name: "Garlic Aioli", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/onion rings.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan Dust", price: 1.99),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description: "Warm and toasty garlic bread, topped with melted butter and parsley.",
      imagePath: "lib/images/sides/Garlic-Bread-11-Square.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Mushrooms",
      description: "Sautéed with garlic, butter, and herbs for a flavorful dish.",
      imagePath: "lib/images/sides/Garlic_Mushrooms.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Red Pepper Flakes", price: 0.99),
        Addon(name: "Soy Sauce", price: 1.49),
        Addon(name: "Parmesan Cheese", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description: "Loaded sweet potato fries with cheese, bacon, onions, sour cream. Perfect for sharing!",
      imagePath: "lib/images/sides/loaded fries.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 0.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description: "Creamy mac and cheese in a crispy crust.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeño Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 0.99),
      ],
    ),
    Food(
      name: "Cornbread",
      description: "A golden, crumbly delight with a hint of sweetness, perfect as a side or a snack.",
      imagePath: "lib/images/sides/Cornbread.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheddar Cheese", price: 0.99),
        Addon(name: "Jalapeño Slices", price: 1.49),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt.",
      imagePath: "lib/images/sides/sweet potato.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    //desserts
    Food(
      name: "Chocolate Brownie",
      description: "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/chocolate brownie.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description: " Italian classic, with layers of coffee-soaked ladyfingers and mascarpone cheese.",
      imagePath: "lib/images/desserts/tiramisu.png",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chocolate Shavings", price: 0.99),
        Addon(name: "Coffee Liqueur", price: 1.49),
        Addon(name: "Berries", price: 1.99),
      ],
    ),
    Food(
      name: "Cheeesecake",
      description: "Creamy cheesecake on a graham cracker crust, with a berry compote.",
      imagePath: "lib/images/desserts/cheesecake.png",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawyberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Ice cream with chocolate sauce, nuts, and whipped cream.",
      imagePath: "lib/images/desserts/Ice_Cream_Sundae.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "Caramel Sauce", price: 1.49),
        Addon(name: "Cookie Crumbs", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.",
      imagePath: "lib/images/desserts/ApplePie.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description: "Decadent red velvet cake with molten chocolate center, vanilla ice cream, and chocolate sauce.",
      imagePath: "lib/images/desserts/RedVelvetLavaCake.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 0.99),
      ],
    ),
    Food(
      name: "Creme Brulee",
      description: "Creamy custard with a caramelized sugar topping.",
      imagePath: "lib/images/desserts/Creme_Brulee.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Seasonal Berries", price: 0.99),
        Addon(name: "Citrus Zest", price: 1.49),
        Addon(name: "Caramel Drizzle", price: 1.99),
      ],
    ),

    //drinks
    Food(
      name: "Lemonade",
      description: "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/lemonade.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served over ice.",
      imagePath: "lib/images/drinks/icedtea.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Smoothie",
      description: "A blend of fresh fruits and yogurt, perfect for a healthy boost",
      imagePath: "lib/images/drinks/smoothie.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Almond Milk", price: 1.49),
        Addon(name: "Chia Seeds", price: 1.99),
      ],
    ),
    Food(
      name: "Mojito",
      description: "A classic Cuban cocktail with muddled lime and mint, sweetened with sugar.",
      imagePath: "lib/images/drinks/Mojito.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.49),
        Addon(name: "Raspberry Pure", price: 0.99),
        Addon(name: "Splash of Coconut Rum", price: 1.99),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description: "A layered coffee drink with steamed milk, espresso, and vanilla syrup.",
      imagePath: "lib/images/drinks/caramel-macchiato.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: "Latte",
      description: "Espresso with steamed milk.",
      imagePath: "lib/images/drinks/Latte.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavored Syrups", price: 0.99),
        Addon(name: "Whipped Cream", price: 0.49),
        Addon(name: "Chocolate Powder", price: 0.99),
      ],
    ),
    Food(
      name: "Cappuccino",
      description: "Espresso with steamed milk and milk foam.",
      imagePath: "lib/images/drinks/Cappuccino.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate Powder", price: 0.99),
        Addon(name: "Cinnamon", price: 0.49),
        Addon(name: "Caramel Sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Macchiato",
      description: "Espresso with a small amount of steamed milk.",
      imagePath: "lib/images/drinks/Macchiato.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.99),
        Addon(name: "Vanilla Syrup", price: 0.49),
        Addon(name: "Hazelnut Syrup", price: 0.99),
      ],
    ),
    Food(
      name: "Mocha",
      description: "Espresso with hot chocolate and steamed milk.",
      imagePath: "lib/images/drinks/Mocha.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate Syrup", price: 0.99),
        Addon(name: "Chocolate Shavings", price: 0.49),
        Addon(name: "Caramel Sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Flat White",
      description: "Espresso with steamed milk and a thin layer of milk foam.",
      imagePath: "lib/images/drinks/Flat_White.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Caramel Syrup", price: 0.99),
        Addon(name: "Vanilla Syrup", price: 0.49),
        Addon(name: "Chocolate Powder", price: 0.99),
      ],
    ),
    Food(
      name: "Turkish Coffee",
      description: "Coffee brewed with coffee grounds, sugar, and water.",
      imagePath: "lib/images/drinks/Turkish_Coffee.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate", price: 0.99),
        Addon(name: "Cinnamon", price: 0.49),
        Addon(name: "Nuts", price: 0.99),
      ],
    ),
    Food(
      name: "Cold Brew",
      description: "Coffee brewed with cold water, typically served over ice.",
      imagePath: "lib/images/drinks/Cold_Brew.png",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavored Syrups", price: 0.99),
        Addon(name: "Ice Cream", price: 0.49),
        Addon(name: "Chocolate Sauce", price: 0.99),
      ],
    ),
  ];

  // user cart
final List<CartItem> _cart = [];



  /*
   G E T T E R S

   */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

/*
   O P E R A T I O N S


 */








// add to cart
 void addToCart(Food food, List<Addon> selectedAddons) {
   //see if there is a cart item already with the same food and selected addons
   CartItem? cartItem = _cart.firstWhereOrNull((item){
     // check if the food items are the same
     bool isSameFood = item.food ==food;

     //check if the list of selected addons are the same
     bool isSameAddons =
     ListEquality().equals(item.selectedAddons, selectedAddons);

     return isSameFood && isSameAddons;
   });

   //if item already exists, increase it'S quantity
   if (cartItem != null){
     cartItem.quantity++;
   }

   //otherwise, add a new cart item to the cart
   else{
     _cart.add(
         CartItem(
             food: food,
             selectedAddons: selectedAddons,
         ),
     );
   }
   notifyListeners();
 }


//remove from cart
void removeFromCart(CartItem cartItem){
   int cartIndex = _cart.indexOf(cartItem);

   if(cartIndex != -1) {
     if (_cart [cartIndex].quantity >1) {
       _cart[cartIndex].quantity--;
     }
     else{
       _cart.removeAt(cartIndex);
     }

   }

   notifyListeners();
}
// get total price of cart
double getTotalPrice() {
   double total = 0.0;

   for(CartItem cartItem in _cart){
     double itemTotal = cartItem.food.price;

     for(Addon addon in cartItem.selectedAddons) {
       itemTotal += addon.price;
     }
     total += itemTotal * cartItem.quantity;
   }
   return total;
}

//get total number of items in cart
int getTotalItemCount(){
     int totalItemCount = 0;

     for(CartItem cartItem in _cart) {
       totalItemCount += cartItem.quantity;
     }

   return totalItemCount;
}

//Clear cart
void clearCart() {
   _cart.clear();
   notifyListeners();
}




/*
   H E L P E R S

   */

// generate a receipt
String displayCartReceipt(){
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  // format the date to include up to seconds only
  String formattedDate =
  DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("----------");

  for (final cartItem in _cart) {
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
  if(cartItem.selectedAddons.isNotEmpty){
    receipt
           .writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
  }
  receipt.writeln();
  }
  receipt.writeln("----------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();

  return receipt.toString();
}

// format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summary
String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(",");
}


}