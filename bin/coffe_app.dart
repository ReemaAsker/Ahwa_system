import 'package:coffe_app/data/customer.dart';
import 'package:coffe_app/data/enums.dart';
import 'package:coffe_app/data/order.dart';

// void main() {
//   List<Order> pendingOrders = [];
//   List<Customer> pickyVIP = [];
//   Set<Order> allChattyRegularOrders = {};
//   Customer ahmed = Customer(name: 'Ahmed');
//   Order order1 = Tea(
//     date: DateTime.now(),
//     status: STATUS.pending,
//     orderCnt: 1,
//     size: SIZE.medium,
//     customer: ahmed,
//     type: TEA_TYPE.normal,
//     hasMint: true,
//     moreShugar: false,
//   );
//   ahmed.placeOrder(order1);
//   pendingOrders.add(order1);
//   ahmed.isOrderArrived(order1, true);
//   order1.hasManyDeials() ? pickyVIP.add(ahmed) : null;
//   allChattyRegularOrders.addAll(ahmed.favOrders ?? []);
//   pendingOrders.remove(order1);

//   print('Welcome to the Smart Ahwa Manager App!');
// }
// /*
// Question: As a professional ahwa owner in Cairo, I want a Smart Ahwa
// Manager app in Flutter to streamline operations, so I can efficiently manage
// customer orders, track popular items, and generate daily sales reports to
// optimize my business. The app should allow me to add orders with a
// customer name, drink type (e.g., shai, Turkish coffee, hibiscus tea), and
// special instructions (e.g., “extra mint, ya rais”); mark orders as completed;
// view a dashboard of pending orders; and generate a report of top-selling
// drinks and total orders served. The app should incorporate culturally
// relevant customer interactions, like handling requests from a “chatty
// regular” or a “picky VIP.” Design and implement this app using at least
// three SOLID principles and core OOP concepts (e.g., inheritance,
// polymorphism, encapsulation). Submit your Dart code along with a 1-2
// paragraph explanation justifying how the principles are applied, why they
// matter in this context, and how they link to The Object-Oriented Thought
// Process (e.g., modularity, abstraction).
// */
// main.dart

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
    type: TEA_TYPE.hibiscus,
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

  // Add orders
  manager.addOrder(order1);
  manager.addOrder(order2);

  // Complete one order
  manager.completeOrder(order1);

  // Dashboard
  print("Pending Orders:");
  for (var o in manager.pendingOrders) {
    print("${o.customer.name} ordered ${o.drinkName}");
  }

  // Reports
  print("\nTop Selling:");
  print(report.topSelling(manager.allOrders));

  print("\nTotal Orders:");
  print(report.totalOrders(manager.allOrders));
}
