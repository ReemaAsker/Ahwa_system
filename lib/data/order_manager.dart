import 'order.dart';
import 'enums.dart';

class OrderManager {
  final List<Order> _orders = [];

  void addOrder(Order order) {
    _orders.add(order);
  }

  void completeOrder(Order order) {
    order.status = STATUS.completed;
  }

  List<Order> get pendingOrders =>
      _orders.where((o) => o.status == STATUS.pending).toList();

  List<Order> get allOrders => _orders;
}
