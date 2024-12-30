import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevery/pages/food_details_page.dart';
import 'package:food_delevery/pages/nav_bar.dart';
import 'package:food_delevery/zerti/screens/cubit/layout_cubit.dart';
import 'package:food_delevery/zerti/screens/nav_bar.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foodak - food Delivery',
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          listTileTheme: ListTileThemeData(
            iconColor: Colors.deepOrange,
          ),
          fontFamily: 'OpenSans',
          textTheme: TextTheme(),
          dividerTheme: DividerThemeData(
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
          scaffoldBackgroundColor: Colors.grey.shade200,
          appBarTheme: AppBarTheme(),
          useMaterial3: true,
        ),
        home: TestNavBarPage(),
        // routes: {
        //   '/': (context) => NavBar(),
        //   FoodDetailsPage.routeName: (context) => FoodDetailsPage(),
        // },
      ),
    );
  }
}
// routes: {
//         '/': (context) => NavBar(),
//       },
