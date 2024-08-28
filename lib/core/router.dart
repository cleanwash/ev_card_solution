import 'package:ev_card_solution/presentation/view/card_detail_screen.dart';
import 'package:ev_card_solution/presentation/view/card_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter( 
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CardScreen(
        
      ),
    ),
    GoRoute(
      path: '/card-detail/:cardName',
      builder: (context, state) {
        final cardName = state.pathParameters['cardName'] ?? '';
        return CardDetailScreen(cardName: cardName);
      },
    ),
  ],
);