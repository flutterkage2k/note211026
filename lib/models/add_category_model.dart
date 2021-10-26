import 'package:hive/hive.dart';
part 'add_category_model.g.dart';

@HiveType(typeId: 1)
class AddCategoryModel {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String dec;

  @HiveField(2)
  late String category;

  @HiveField(3)
  late DateTime createdDate;

  @HiveField(4)
  late bool isExpense = true;

  @HiveField(5)
  late double amount;

  @HiveField(6)
  late bool isCompleted = false;
}
