import 'package:ev_card_solution/domain/repository/card_repository.dart';
import 'package:ev_card_solution/domain/model/card.dart' as card_model;  // 별칭 사용
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final CardRepository cardRepository;
  
  const CardScreen({super.key, required this.cardRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Information'),
      ),
      body: FutureBuilder<List<card_model.Card>>(  
        future: cardRepository.getCardResults(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No cards found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final card = snapshot.data![index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(card.cardName), 
                    subtitle: Text('Eligible Companies: ${card.eligibleCompanies.length}'),  
                    onTap: () {
                    
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}