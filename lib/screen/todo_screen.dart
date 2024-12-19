import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/getx/todo_controller.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TodoController _todoController = Get.put(TodoController());

  @override
  void initState() {
    super.initState();
    _todoController.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    print("build......................");
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Obx(() {
        // Display loading indicator while data is loading
        if (_todoController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        // Check if there is any data
        if (_todoController.list.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        // Build the list when data is available
        return ListView.builder(
          itemCount: _todoController.list.length,
          itemBuilder: (context, index) {
            var todo = _todoController.list[index];
            return InkWell(
              onTap: () {
                _todoController.removeTodo(index);
                Get.closeCurrentSnackbar();
                Get.snackbar("Alert", "tap on index at $index",
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Card(
                child: ListTile(
                  title: Text('Todo ID: ${todo.id}'),
                  subtitle: Text('Completed: ${todo.completed}'),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
