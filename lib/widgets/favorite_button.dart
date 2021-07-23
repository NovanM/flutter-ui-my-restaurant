part of 'widgets.dart';

class FovoriteButton extends StatefulWidget {
  @override
  _FovoriteButtonState createState() => _FovoriteButtonState();
}

class _FovoriteButtonState extends State<FovoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: mainColor,
        ),
        iconSize: 30,
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
