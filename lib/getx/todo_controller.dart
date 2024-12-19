import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_demo/model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  RxList<TodoModel> list = <TodoModel>[].obs;
  RxBool isLoading = false.obs;

  Future<List<TodoModel>> fetchData() async {
    isLoading.value = true;
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        // Correctly map the list of JSON objects to TodoModel
        for (Map<String, dynamic> i in jsonData) {
          list.add(TodoModel.fromJson(i));
        }
        //list.value = jsonData.map((e) => TodoModel.fromJson(e)).toList();
        print(jsonData);
        isLoading.value = false;
        return list;
      } else {
        isLoading.value = false;
        return [];
      }
    } catch (e) {
      isLoading.value = false;
      print("Error: $e");
      return [];
    }
  }
  void removeTodo(int index){
    list.removeAt(index);
  }
}
