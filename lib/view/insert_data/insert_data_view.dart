import 'package:cubit_sqlite_demo/view/insert_data/insert_data_cubit.dart';
import 'package:cubit_sqlite_demo/view/insert_data/insert_data_state.dart';
import 'package:cubit_sqlite_demo/view/show_record/show_record_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class InsertDataView extends StatefulWidget {
  const InsertDataView({super.key});

  static const String routeName = 'InsertDataView';

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => InsertDataCubit(const InsertDataState()),
      child: const InsertDataView(),
    );
  }

  @override
  State<InsertDataView> createState() => _InsertDataViewState();
}

class _InsertDataViewState extends State<InsertDataView> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('insert Data'),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'field empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'enter name'),
              ),
              const Gap(20),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'field empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'enter designation'),
              ),
              const Gap(30),
              ElevatedButton(
                  onPressed: () {
                      Navigator.pop(context);
                    // Navigator.pushAndRemoveUntil(
                    //     context, ShowRecordView.routeName, (route) => false);
                  },
                  child: Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}
