class TPricingCalculator {
  /// -- Calculate Price based on Tax and shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //lookup the tax rate for the given location from the tax database or API
    //return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //lookup the shipping cost for the given location using a shipping rate API
    //calculate the shipping cost based on various factors like distance, weight etc
    return 0.10;
  }

  /// --Sum all cart calues and return total amount
  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice. currentPrice)=> previousPrice + (currentPrice ?? 0));
  // }
}
