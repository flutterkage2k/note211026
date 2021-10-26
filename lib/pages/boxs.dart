import 'package:hive/hive.dart';
import 'package:note211026/models/add_category_model.dart';

class Boxes {
  static Box<AddCategoryModel> getTransactions() =>
      Hive.box<AddCategoryModel>('addcategorymodel');
}
