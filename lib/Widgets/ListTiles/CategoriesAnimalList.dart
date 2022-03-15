import 'package:flutter/material.dart';

class CategoriesAnimalList extends StatelessWidget {
  const CategoriesAnimalList(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.comment,
      this.profileImgUrl,
      required this.onLike,
      required this.onMenuOpen})
      : super(key: key);

  final String title;
  final String subtitle;
  final String comment;
  final String? profileImgUrl;
  final Function onLike;
  final Function onMenuOpen;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            foregroundImage:
                NetworkImage(profileImgUrl != null ? profileImgUrl! : ""),
            child: const Icon(Icons.account_circle)),
        SizedBox(width: 12),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
              ),
              SizedBox(height: 8),
              Text(comment,
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [LikeButton(onPressed: () {}, color: Colors.red)],
        ),
      ],
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {Key? key, required this.onPressed, this.color = Colors.black12})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: Colors.red),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
