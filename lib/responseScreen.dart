import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_evaluation/services/RemoteService.dart';

import 'Models/todo.dart';

class ResponseScreen extends StatefulWidget {
  const ResponseScreen({Key? key}) : super(key: key);

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  List<ToDo>? todos;
  var isLoaded = false;

  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    todos = await RemoteService().getToDos();
    if (todos != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
      visible: isLoaded,

        child: ListView.builder(
          itemCount: todos?.length,

          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.api_outlined),
              title: Text(
                    'Title:  ' + todos![index].title + ' \n  Completion Status:  ' + todos![index].completed.toString(),
                    maxLines: 2,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        overflow: TextOverflow.ellipsis),
                  ),
              trailing: Text(
                    'Completion Status:  ' + todos![index].completed.toString(),
                    maxLines: 2,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        overflow: TextOverflow.ellipsis),
                  ),
            );
          },
        ),

      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
