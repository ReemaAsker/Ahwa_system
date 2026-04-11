import 'order.dart';
import 'enums.dart';

class Tea extends Order {
  final TEA_TYPE type;
  bool hasMint;
  bool moreSugar;

  Tea({
    required super.date,
    required super.status,
    required super.size,
    required super.quantity,
    required super.customer,
    required this.type,
    this.hasMint = false,
    this.moreSugar = false,
  });

  @override
  String get drinkName => type.name;

  @override
  bool hasManyDetails() {
    return type != TEA_TYPE.normal || hasMint || moreSugar;
  }
}
