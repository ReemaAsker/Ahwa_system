// import 'package:coffe_app/data/enums.dart';
// import 'package:coffe_app/data/order.dart';

// class Customer {
//   List<Order> _orders;
//   List<Order>? favOrders;
//   String _name;

//   Customer({required String name, List<Order> orders = const []})
//     : _name = name,
//       _orders = orders;

//   List<Order> get orders => _orders;
//   String get name => _name;
//   placeOrder(Order order) {
//     if (_orders.contains(order)) favOrders?.add(order);
//     _orders.add(order);
//   }

//   isOrderArrived(Order order, bool isArrived) {
//     if (orders.contains(order)) {
//       order.status = isArrived ? STATUS.completed : STATUS.pending;
//     }
//   }
// }
class Customer {
  final String name;
  Customer(this.name);
}

class ChattyRegular extends Customer {
  ChattyRegular(String name) : super(name);
}

class PickyVIP extends Customer {
  PickyVIP(String name) : super(name);
}
