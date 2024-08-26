import 'package:ev_card_solution/data/data_source/card_api.dart';
import 'package:ev_card_solution/data/repository/card_repository_impl.dart';
import 'package:ev_card_solution/domain/repository/card_repository.dart';
import 'package:ev_card_solution/presentation/component/card_items.dart';
import 'package:ev_card_solution/presentation/view/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CardApi cardApi = CardApi();
    final CardRepository cardRepository = CardRepositoryImpl(cardApi: cardApi);

    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CardScreen()
        // home: CardScreen()
      ),
    );
  }
}