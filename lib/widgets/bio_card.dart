import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData traillingIcon;
  final double marginBottom;

  const BioCard(
      {@required this.leadingIcon,
      @required this.title,
      @required this.subTitle,
      @required this.traillingIcon,
      this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(bottom: marginBottom),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: TextStyle(fontFamily: 'Gemunu'),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            fontFamily: 'Gemunu',
          ),
        ),
        trailing: Icon(traillingIcon),
      ),
    );
  }
}
