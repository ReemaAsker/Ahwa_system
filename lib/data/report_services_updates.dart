import 'order.dart';

class ReportService {
  Map<String, int> topSelling(List<Order> orders) {
    final Map<String, int> result = {};

    for (var order in orders) {
      result[order.drinkName] = (result[order.drinkName] ?? 0) + order.quantity;
    }

    return result;
  }

  int totalOrders(List<Order> orders) {
    return orders.fold(0, (sum, o) => sum + o.quantity);
  }
}
