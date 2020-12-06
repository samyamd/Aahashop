import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Colors.orange[600],
    title:
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Expanded(
    flex: 8,
    child: Image.asset(
    'assets/Aaha-shop-logo.png',
    height: 50,
    alignment: Alignment.centerLeft,
    ),
    ),
    Expanded(
    flex: 3,
    child: FlatButton.icon(
    icon: Icon(
    Icons.supervisor_account,
    size: 30,
    ),
    label: Text('')),
    ),
    Expanded(
    flex: 3,
    child: FlatButton.icon(
onPressed: () {
print('Clicked');
},
icon: Icon(
Icons.menu,
size: 30,
),
label: Text('')),
)
]),
);
  }
}
