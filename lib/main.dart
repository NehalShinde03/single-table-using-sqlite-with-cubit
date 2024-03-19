import 'package:cubit_sqlite_demo/view/insert_data/insert_data_view.dart';
import 'package:cubit_sqlite_demo/view/show_record/show_record_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: ShowRecordView.routeName,
      routes: routes,
    );
  }

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    ShowRecordView.routeName:ShowRecordView.builder,
    InsertDataView.routeName:InsertDataView.builder
  };

}
