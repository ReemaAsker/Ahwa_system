import 'order.dart';
import 'enums.dart';

class Coffee extends Order {
  final COFFEE_TYPE type;
  bool hasMilk;
  int sugarLevel; // 0–3
  List<String> flavors;

  Coffee({
    required super.date,
    required super.status,
    required super.size,
    required super.quantity,
    required super.customer,
    required this.type,
    this.hasMilk = false,
    this.sugarLevel = 1,
    this.flavors = const [],
  });

  @override
  String get drinkName => type.name;

  @override
  bool hasManyDetails() {
    return type != COFFEE_TYPE.normal ||
        hasMilk ||
        sugarLevel > 1 ||
        flavors.isNotEmpty;
  }
}
