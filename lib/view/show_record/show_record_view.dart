import 'package:cubit_sqlite_demo/view/insert_data/insert_data_view.dart';
import 'package:cubit_sqlite_demo/view/show_record/show_record_cubit.dart';
import 'package:cubit_sqlite_demo/view/show_record/show_record_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ShowRecordView extends StatefulWidget {
  const ShowRecordView({super.key});

  static const String routeName = '/show_record_view';

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowRecordCubit(ShowRecordState()),
      child: const ShowRecordView(),
    );
  }

  @override
  State<ShowRecordView> createState() => _ShowRecordViewState();
}

class _ShowRecordViewState extends State<ShowRecordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqlite with Cubit'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, InsertDataView.routeName);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<ShowRecordCubit, ShowRecordState>(
        builder: (BuildContext context, state) {
          return Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                vertical: 5, horizontal: 5),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('name'),
                    subtitle: Text('location'),
                    leading: Icon(Icons.person),
                    trailing: Wrap(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                      ],
                    ),
                    tileColor: Colors.redAccent.withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  );
                },
                separatorBuilder: (context, index) {
                  return Gap(5);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
