import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/UI/size_config.dart';

double heightMultiplier = SizeConfig.heightMultiplier;

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String name;
  final Function onPressed;
  CustomAppBar(this.title, this.subtitle, this.name, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Container(
        height: 8 * heightMultiplier,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 0.5 * heightMultiplier,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ],
            ),
            CupertinoButton(
              padding: EdgeInsets.all(0),
              child: Text(name),
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}

class BackAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  BackAppBar(this.title, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8 * heightMultiplier,
      child: Row(
        children: <Widget>[
          icon == null
              ? Container()
              : CupertinoButton(
                  padding: EdgeInsets.all(0),
                  child: Icon(
                    icon,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
          SizedBox(
            width: 0.4 * heightMultiplier,
          ),
          Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.body2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
