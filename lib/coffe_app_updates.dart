import 'package:coffe_app/data/customer.dart';
import 'package:coffe_app/data/tea.dart';

import 'data/coffee.dart';
import 'data/enums.dart';
import 'data/order_manager.dart';
import 'data/report_services.dart';

void main() {
  final manager = OrderManager();
  final report = ReportService();

  // Customers
  final ahmed = ChattyRegular("Ahmed");
  final ali = PickyVIP("Ali");

  // Orders
  final order1 = Tea(
    date: DateTime.now(),
    status: STATUS.pending,
    size: SIZE.medium,
    quantity: 2,
    customer: ahmed,
    type: TEA_TYPE.black,
    hasMint: true,
  );

  final order2 = Coffee(
    date: DateTime.now(),
    status: STATUS.pending,
    size: SIZE.large,
    quantity: 1,
    customer: ali,
    type: COFFEE_TYPE.turkish,
    hasMilk: true,
    sugarLevel: 2,
    flavors: ["cardamom"],
  );

  manager.addOrder(order1);
  manager.addOrder(order2);

  manager.completeOrder(order1);

  print("Pending Orders:");
  for (var o in manager.pendingOrders) {
    print("${o.customer.name} ordered ${o.drinkName}");
  }

  print("\nTop Selling:");
  print(report.topSelling(manager.allOrders));

  print("\nTotal Orders:");
  print(report.totalOrders(manager.allOrders));
}
