import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note211026/pages/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("글씨는 어떻게 나와?"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddPage1(
                onClickedDone: (String name, double amount, bool isExpense,
                    bool isCompleted, String dec, String category) {},
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
