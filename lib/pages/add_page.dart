import 'package:flutter/material.dart';
import 'package:note211026/models/add_category_model.dart';

class AddPage1 extends StatefulWidget {
  final AddCategoryModel? addCategoryModel;
  final Function(String name, double amount, bool isExpense, bool isCompleted,
      String dec, String category) onClickedDone;

  const AddPage1({Key? key, this.addCategoryModel, required this.onClickedDone})
      : super(key: key);

  @override
  _AddPage1State createState() => _AddPage1State();
}

class _AddPage1State extends State<AddPage1> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final decController = TextEditingController();
  final categoryController = TextEditingController();
  final amountController = TextEditingController();

  bool isExpense = true;
  bool isCompleted = false;

  @override
  void initState() {
    super.initState();
    nameController.addListener(() => setState(() {}));
    decController.addListener(() => setState(() {}));
    categoryController.addListener(() => setState(() {}));
    amountController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    nameController.dispose();
    decController.dispose();
    categoryController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.addCategoryModel != null;
    final title = isEditing ? 'Edit(수정화면)' : 'Add(추가화면)';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              buildName(),
              const SizedBox(height: 10),
              buildDec(),
              const SizedBox(height: 10),
              buildCategroy(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName() => TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: '구분 제목을 입력하세요',
          prefixIcon: const Icon(Icons.title),
          suffixIcon: nameController.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () => nameController.clear(),
                  icon: const Icon(Icons.close),
                ),
        ),
        validator: (name) => name != null && name.isEmpty ? "빈칸은 안되요" : null,
      );

  Widget buildDec() => TextFormField(
        controller: decController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: '내용을 입력하세요',
          prefixIcon: const Icon(Icons.note_alt),
          suffixIcon: decController.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () => decController.clear(),
                  icon: const Icon(Icons.close),
                ),
        ),
        validator: (dec) => dec != null && dec.isEmpty ? "빈칸은 안되요" : null,
      );

  Widget buildCategroy() => TextFormField(
        controller: categoryController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: '분류제목 입력하세요',
          prefixIcon: const Icon(Icons.folder_rounded),
          suffixIcon: categoryController.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () => categoryController.clear(),
                  icon: const Icon(Icons.close),
                ),
        ),
        validator: (cate) => cate != null && cate.isEmpty ? "빈칸은 안되요" : null,
      );
}
