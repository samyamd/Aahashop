import 'package:flutter/material.dart';
import 'package:aahashop/model/ExpansionItem.dart';
class ExtensionPanel extends StatefulWidget {
  ExtensionPanel({Key key,this.isExpanded, this.title, this.body}) : super(key: key);

  final bool isExpanded;
  final String title;
  final String body;

  ExtensionPanelState createState() =>  ExtensionPanelState();
}

class ExtensionPanelState extends State<ExtensionPanel> {

  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return  ListTile(
                title:  Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  style:  TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
            );
          },
          isExpanded: widget.isExpanded,
          body: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(widget.body)
          ),
        )
  ]
    );
  }
}
