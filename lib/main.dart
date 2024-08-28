import 'package:ev_card_solution/core/router.dart';
import 'package:ev_card_solution/data/repository/card_repository_impl.dart';
import 'package:ev_card_solution/domain/repository/card_repository.dart';
import 'package:ev_card_solution/presentation/view/card_screen_view.dart';
import 'package:ev_card_solution/data/data_source/card_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  
  final CardApi cardApi = CardApi();
  final CardRepository cardRepository = CardRepositoryImpl(cardApi: cardApi);

  runApp(MyApp(cardRepository: cardRepository));
}

class MyApp extends StatelessWidget {
  final CardRepository cardRepository;

  const MyApp({super.key, required this.cardRepository});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => ChangeNotifierProvider(
        create: (_) => CardScreenViewModel(cardRepository),
        child: MaterialApp.router(
          routerConfig: router, // router.dart에서 정의한 _router 사용
          title: 'EV Card Solution',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}