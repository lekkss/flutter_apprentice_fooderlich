import 'package:flutter/material.dart';

import 'package:flutter_apprentice_fooderlich/shared/app_theme.dart';
import 'package:flutter_apprentice_fooderlich/widgets/circle_image.dart';

class AuthorCard extends StatefulWidget {
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
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleImage(
            imageProvider: widget.imageProvider,
            imageRadius: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.headline3,
              )
            ],
          ),
          IconButton(
              icon: Icon(_isFavorite ? Icons.favorite_border : Icons.favorite),
              iconSize: 30,
              color: Colors.red,
              onPressed: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              }),
        ],
      ),
    );
  }
}
