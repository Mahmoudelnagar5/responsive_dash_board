import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_backgrond_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transction_history.dart';

class MyCardsAndTransctionHistory extends StatelessWidget {
  const MyCardsAndTransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransctionHistory(),
        ],
      ),
    );
  }
}
