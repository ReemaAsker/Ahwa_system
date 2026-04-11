import 'customer.dart';
import 'enums.dart';

abstract class Order {
  final DateTime _date;
  STATUS _status;
  final SIZE _size;
  final int _quantity;
  final Customer _customer;

  Order({
    required DateTime date,
    required STATUS status,
    required SIZE size,
    required int quantity,
    required Customer customer,
  }) : _date = date,
       _status = status,
       _size = size,
       _quantity = quantity,
       _customer = customer;

  DateTime get date => _date;
  STATUS get status => _status;
  SIZE get size => _size;
  int get quantity => _quantity;
  Customer get customer => _customer;

  set status(STATUS value) => _status = value;

  String get drinkName;

  bool hasManyDetails();
}
