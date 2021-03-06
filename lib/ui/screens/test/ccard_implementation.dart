import 'package:app/ui/widgets/ccard.dart';
import 'package:app/ui/widgets/ccolumn_text.dart';
import 'package:app/ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CCardImplementation extends StatefulWidget {
  @override
  _CCardImplementationState createState() => _CCardImplementationState();
}

class _CCardImplementationState extends State<CCardImplementation> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: CColors.black,
      body: Container(
        width: size.width,
        padding: EdgeInsets.only(
            left: CPadding.defaultSmall,
            right: CPadding.defaultSidesSmall,
            top: CPadding.defaultSmall),
        child: ListView(
          children: <Widget>[
            //HeaderWithSearch(size: size),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CCard(
                        width: size.width / 2 - 3 * CPadding.defaultSmall,
                        body: Container(color: Colors.blue,),
                        onPressed: () {},
                      ),
                      CCard(
                        width: size.width / 2 - 3 * CPadding.defaultSmall,
                        body: CColumnText(
                          title: 'Temp',
                          subTitle: 'Identifier : #127',
                          description: 'Virtual temperature sensor',
                          colorText: CColors.white,

                        ),
                        colorBackground: Color.fromRGBO(29, 29, 29, 1),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width / 2 - 3 * CPadding.defaultSmall,
                          child: CCard(
                            body: Container(
                              color: Colors.blue,
                            ),
                            suffixWidget: Container(
                              color: Colors.red,
                              width: 15,
                              margin: EdgeInsets.only(
                                  right: 16, top: 16, bottom: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: size.width / 2 - 3 * CPadding.defaultSmall,
                          child: CCard(
                            body: Container(
                              color: Colors.blue,
                            ),
                            suffixWidget: Container(
                              color: Colors.red,
                              width: 15,
                              margin: EdgeInsets.only(
                                  right: 16, top: 16, bottom: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: CCard(
                    body: Container(color: Colors.blue,),
                    suffixWidget: Container(
                      color: Colors.red, width: 25, margin: EdgeInsets.all(16),),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: CCard(
                    body: CColumnText(
                      title: 'Temp',
                      subTitle: 'Identifier : #127',
                      description: 'Virtual temperature sensor',
                      colorText: CColors.white,

                    ),
                    colorBackground: Color.fromRGBO(29, 29, 29, 1),

                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: const Text('onPressed CCard'),
                      ));
                    },
                    suffixWidget: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: CColors.white,

                        onPressed: () {
                          Scaffold.of(context).showSnackBar(SnackBar(

                            content: const Text('onPressed suffixWidget'),
                          ));
                        },

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: CCard(
                    height: 100,
                    body: Container(
                      color: Colors.blue,
                      child: Row(
                        children: [
                          Container(color: Colors.yellow, width: 50,margin: EdgeInsets.all(6),),
                          SizedBox(width: 20,),
                          Container(color: Colors.deepOrange,width: 125,margin: EdgeInsets.all(6),),
                        ],
                      ),
                    ),
                    colorBackground: CColors.white,

                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: const Text('onPressed CCard'),
                      ));
                    },
                    suffixWidget: Container(
                      width: 20,
                      color: Colors.red,
                      margin: EdgeInsets.only(right: 16,top: 16,bottom: 16),
                      alignment: Alignment.topRight,
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: CCard(
                    height: 100,
                    body: Row(
                      children: [
                        Icon(Icons.account_balance_sharp, color: Colors.green,
                          size: 50,),
                        SizedBox(width: 20,),
                        CColumnText(
                          title: 'Temp',
                          subTitle: 'Identifier : #127',
                          description: 'Virtual temperature sensorsensorsensor sensorsensor sensor ',
                          colorText: CColors.white,

                        ),
                      ],
                    ),
                    colorBackground: Color.fromRGBO(29, 29, 29, 1),
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: const Text('onPressed CCard'),
                      ));
                    },
                    suffixWidget: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: CColors.white,
                        onPressed: () {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: const Text('onPressed suffixWidget'),
                          ));
                        },

                      ),
                    ),


                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
