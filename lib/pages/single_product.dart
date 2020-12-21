import 'package:aahashop/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:aahashop/services/expansion_panel.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  String display = '6.6-inch Perfect FullView Display';
  int quantity = 1;
  String sku = 'ASCP-TC15PRO';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: brand,
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
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Home / Shop / Smartphones / Techno Camon 15 Pro',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/Camon-15-Pro.png'),
                ),
              ),
              Text(
                'Techno Camon 15 Pro',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: 3,
                    itemCount: 5,
                    // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemSize: 24,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('(1 Review)')
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey,
              ),
              Text(
                'Rs. 25,000.00',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Status:  ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'In Stock',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                color: Colors.grey[300],
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Display: 6.6-inch Perfect FullView Display RAM: 6GB Storage: 128GB Chipset: Helio P35 Resolution: 2400 x 1080 Battery: 4,000mAh',
                      softWrap: true,
                    )
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Colors.grey,
              ),
              Text('Quantity'),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.remove,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              quantity > 1 ? quantity -= 1 : quantity;
                            });
                          },
                        ),
                        Text(
                          '$quantity',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              quantity < 5 ? quantity += 1 : quantity;
                            });
                          },
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.orange[600],
                  highlightColor: Colors.orange[800],
                  padding: const EdgeInsets.all(15),
                  child:
                      const Text('ADD TO CART', style: TextStyle(fontSize: 26)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.live_tv,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        quantity < 5 ? quantity += 1 : quantity;
                      });
                    },
                  ),
                  FlatButton.icon(
                    padding: EdgeInsets.only(left: 20),
                    icon: Icon(
                      Icons.graphic_eq,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        quantity < 5 ? quantity += 1 : quantity;
                      });
                    },
                    label: Text('Compare'),
                  )
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey,
              ),
              Text(
                'SKU:  $sku',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              RichText(
                  text: TextSpan(
                      text: 'Category:  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                      children: [
                    TextSpan(text: '$sku', style: TextStyle(color: Colors.blue))
                  ])),
              Text(
                'Tag:  $sku',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.face),
                  Image.asset(
                    'assets/Aaha-shop-logo.png',
                    height: 70,
                  ),
                  Image.asset(
                    'assets/Aaha-shop-logo.png',
                    height: 70,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 40,
              ),

              ExtensionPanel(isExpanded: false, title: "Specifications", body: "SOme Specs of the ttile",),
              SizedBox(height: 10,),
              ExtensionPanel(isExpanded: false, title: "Specifications", body: "SOme Specs of the ttile",),
              // 'Specification', 'Description of Specifications'
              Text('After Slider'),
            ],
          ),
        ));
  }
}
