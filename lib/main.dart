import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpatik_mobile_apps/cubit/counter/counter_cubit.dart';
import 'package:simpatik_mobile_apps/cubit/routes/routes_cubit.dart';
import 'package:simpatik_mobile_apps/views/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RoutesCubit(),
        ),
        BlocProvider(
          create: (_) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        home: const WrapperPage(),
      ),
    );
  }
}
