import 'package:flutter/material.dart';

import 'package:flutter_apprentice_fooderlich/shared/app_theme.dart';
import 'package:flutter_apprentice_fooderlich/widgets/circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                title,
                style: FooderlichTheme.lightTextTheme.headline3,
              )
            ],
          ),
          IconButton(
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.grey[400],
              onPressed: () {
                const snackBar = SnackBar(content: Text('Favorite Pressed'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ],
      ),
    );
  }
}
