import 'package:flutter/material.dart';

import 'DeliveryAddress.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Image.asset("lib/images/watch.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 18),
                child: Text(
                  'TAGG WATCH',
                  style: theme.textTheme.headline1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.local_drink,
                            color: Colors.indigo[700],
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Activity Tracker',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Smart Watch',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.person_pin_circle,
                              color: Colors.indigo[700]),
                          SizedBox(width: 5),
                          Text(
                            'Health',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  '"TAGG Verve Waterproof Smartwatch with Full Touch Controls and High Resolution Display || 10 Days Battery Backup (Black)"',
                  style: theme.textTheme.headline5,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: <Widget>[
                    Text(
                      'Market Price:',
                      style: theme.textTheme.headline4,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '5,000 INR',
                      style: theme.textTheme.headline4,
                    ),
                  ],
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: <Widget>[
                    Text(
                      'Maximum Discounted Price:',
                      style: theme.textTheme.headline4,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '4,000 INR',
                      style: theme.textTheme.headline4,
                    ),
                  ],
                )
              ]),
              Image.asset("lib/images/watch_details.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Product Highlights',
                    style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Better Display - TAGG Verve comes with a 1.4’ display with 93% screen ratio and 320*320 resolution. It features ultra narrow bezels and better visual effects, which makes it convenient to control and read. Powered by a motion sensor, the display can be turned on just by the movement of your wrist.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'IP68 Waterproof - The smartwatch is IP68 Waterproof. It makes it safe from splashes of water, submission of upto 1.5m and leaves you carefree. Wear it everywhere and on the go to enjoy the top-notch features.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Long Battery Life - You can use your TAGG Verve smartwatch without having to worry about charging it for 10 days. This smartwatch comes with smart power consumption, and is definitely everything that you could have asked for!',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Better Accuracy and Greater Compatibility: With Nordic NRF52 Industry advanced chipset and BOSCH G Sensor, TAGG Verve gives you the accurate data of your activity. TAGG Verve supports IOS 9.0+ and Android 5.0 as well. Bluetooth version is 5.0.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Notifications & Connected GPS - After the smartwatch is successfully connected with the app, you can view almost all the notifications on the smartwatch itself. It also vibrates to remind you of the incoming calls, messages, whatsapp and other notifications. You get the access to connected GPS in the application which tracks your activity map.',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('About Company', style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                      'India\'s leading consumer Electronics Brand, originated with the aim of making quality affordable. We Engineer quality products/solutions for consumers worldwide and seek to change the way you live, work and play with your mobile electronics.'),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeliveryAddress()),
                  ),
                  child: Text('Pay Upto 20% in Coins'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeliveryAddress()),
                  ),
                  child: Text('Buy at MRP'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FundraiseCard extends StatelessWidget {
  const FundraiseCard(
      {Key key,
      @required this.theme,
      @required this.header,
      @required this.subheader,
      @required this.data})
      : super(key: key);

  final ThemeData theme;
  final String header;
  final String subheader;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(children: [
          Text(header, style: theme.textTheme.headline4),
          Text(subheader, style: theme.textTheme.headline4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data, style: theme.textTheme.headline3),
          )
        ]),
      ),
    );
  }
}
