import 'dart:collection';

import 'package:flutter/material.dart';

class DictionaryScreen extends StatefulWidget {
  DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final Map<dynamic, String> map = {
    34: 'thirty-four',
    90: 'ninety',
    61: 'sixty-one',
    93: 'nine',
    2: 'two',
    6: 'six',
    3: ' three',
    8: 'eight',
    80: 'eighty',
    81: 'eighty-one',
  };

  final Map<String, String> mapString = {
    'Ninety-Nine': '99',
    'nine-hundred': '900'
  };

  @override
  Widget build(BuildContext context) {
    //   List<dynamic> list = [];
    //
    //   map.forEach((k, v) => list.add(Dict(k, v).toString()));
    //   print("list $list");
    //   list.sort();
    //   print("sorted $list");

    var sortedIntMap =
        SplayTreeMap<dynamic, String>.from(map, (a, b) => a.compareTo(b));
    var sortedStringMap = Map<String, String>.fromEntries(
        mapString.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));
    var finalMap = {};
    finalMap.addAll(sortedIntMap);
    finalMap.addAll(sortedStringMap);
    print(finalMap);

    return SingleChildScrollView(

      child: Column(
        children: [
          const Text('Sorted Dictionary'),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100,4 ,100,4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:finalMap.entries
                  .map((entry) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(entry.key.toString()),
                        trailing: Text(':' '        ''    '+ entry.value.toString()),
                      ))
                  .toList(),

        ),
            ),
          ),
    ]
      ),
    );
  }
}
