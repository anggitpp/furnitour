import 'package:furnitour/pages/cart/cart_page.dart';
import 'package:furnitour/pages/checkout/checkout_page.dart';
import 'package:furnitour/pages/detail_product/detail_product_page.dart';
import 'package:furnitour/pages/get_started/get_started_page.dart';
import 'package:furnitour/pages/payment_method/payment_method_page.dart';

import '../config/route_name.dart';

final routes = {
  RouteName.home: (context) => const GetStartedPage(),
  RouteName.paymentMethod: (context) => const PaymentMethodPage(),
  RouteName.detailProduct: (context) => const DetailProductPage(),
};
