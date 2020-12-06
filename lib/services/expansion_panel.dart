import 'package:flutter/material.dart';
import 'package:aahashop/model/ExpansionItem.dart';
class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() =>  Expansionpaneltate();
}

class Expansionpaneltate extends State<Expansionpanel> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        false, // isExpanded ?
        'Specifications', // header
        'Simple Text', // body
    ),
  ];
  ListView List_Criteria;
  Widget build(BuildContext context) {
    List_Criteria = ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = !items[index].isExpanded;
            });
          },
          children: items.map((ExpansionItem item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return  ListTile(
                    title:  Text(
                      item.header,
                      textAlign: TextAlign.left,
                      style:  TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                );
              },
              isExpanded: item.isExpanded,
              body: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(item.body)
              ),
            );
          }).toList(),
        ),
      ],
    );

    return List_Criteria;
  }
}
