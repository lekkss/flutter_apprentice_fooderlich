import 'package:flutter/material.dart';
import 'package:flutter_apprentice_fooderlich/widgets/author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/mag5.png',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            AuthorCard(
              authorName: 'Afolabi Oluwasegun',
              title: 'KOG',
              imageProvider: AssetImage('assets/images/lekkss1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
