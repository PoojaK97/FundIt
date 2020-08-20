import 'package:flutter/material.dart';

import 'DeliveryAddress.dart';

class OrderSuccessful extends StatefulWidget {
  @override
  _OrderSuccessfulState createState() => _OrderSuccessfulState();
}

class _OrderSuccessfulState extends State<OrderSuccessful> {
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 18),
                child: Text(
                  'ORDER SUCCESSFUL',
                  style: theme.textTheme.headline1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  'You have successfully ordered TAGG Verve Waterproof Smartwatch. \n\n ETA: 26th August, 2020 \n\n Thank you for shopping with us.',
                  style: theme.textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Details', style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Product Price: 5000 INR ',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Amount Spent: 4000 INR',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Coins Spent: 100              ',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Coins Earned: 400            ',
                    style: theme.textTheme.headline2,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeliveryAddress()),
                  ),
                  child: Text('Continue Browsing'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
              ),
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
