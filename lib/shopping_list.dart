//import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_b/ItemDetails.dart';

import 'job.dart';
import 'liked.dart';

class ShoppingMenu extends StatefulWidget {
  @override
  _ShoppingMenuState createState() => _ShoppingMenuState();
}

class _ShoppingMenuState extends State<ShoppingMenu> {
  FocusNode nameFocusNode;
  FocusNode phoneNumberFocusNode;
  FocusNode addressFocusNode;

  TextEditingController name = TextEditingController(text: 'Initial value');
  String value;
  bool nameEnabled = false;
  bool phoneNumberEnabled = false;
  bool addressEnabled = false;

  @override
  void initState() {
    super.initState();

    nameFocusNode = FocusNode();
    phoneNumberFocusNode = FocusNode();
    addressFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    nameFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    addressFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 8, 10),
              child: Text(
                'Items Available',
                style: TextStyle(
                    fontFamily: 'Typewriter',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius.circular(30.0)),
                                    color: Colors.grey[200],
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ItemDetails()),
                                    ),
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.indigo[700]),
                                    ),
                                  ),
                                  Text('Embroidered Kurti',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text('The Clothes Company',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600])),
                                  Text('Discount Offered: 100',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Coins worth: 200',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Valid till 3/8/20',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.indigo[700]))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.asset(
                        "lib/images/kurti.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),

            //2
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius.circular(30.0)),
                                    color: Colors.grey[200],
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ItemDetails()),
                                    ),
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.indigo[700]),
                                    ),
                                  ),
                                  Text('Woven Handbasket',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text('Indian Crafts and Co.',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600])),
                                  Text('Discount Offered: 150',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Coins worth: 400',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Valid till 2/1/19',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.indigo[700]))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.asset(
                        "lib/images/woven_basket.jpg",
                      ),
                    ),
                  ),
                )
              ],
            ),

            //3
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius.circular(30.0)),
                                    color: Colors.grey[200],
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ItemDetails()),
                                    ),
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.indigo[700]),
                                    ),
                                  ),
                                  Text('Boat Tour - Goa',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text('Pooja Travels and Services',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600])),
                                  Text('Discount Offered: 1500',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Coins worth: 5000',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),

                                  Text('Valid till 3/8/20',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.indigo[700]))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.asset(
                        "lib/images/boat.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),

            //4
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius.circular(30.0)),
                                    color: Colors.grey[200],
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ItemDetails()),
                                    ),
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.indigo[700]),
                                    ),
                                  ),
                                  Text('Grover Sauvignon Blanc',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text('Grover Zampa Vineyards',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600])),
                                  Text('Discount Offered: 250',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Coins worth: 300',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600])),
                                  Text('Valid till 3/8/20',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.indigo[700]))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.network(
                        "https://images.squarespace-cdn.com/content/55a8de09e4b0090a7a1ac6de/1547227750877-9UO6V492X8S6H7DF1610/Albourne_estate_wine%26Vermouth_product-photographer-0011.jpg?content-type=image%2Fjpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getJobCard(Job job) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Liked()),
        );
      },
      child: Stack(
        children: <Widget>[
          //  FlatButton(
          //   shape: new RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(30.0)),
          //   color: Colors.grey[200],
          //   onPressed: () {},
          //   child: Text('\$10 Investment'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20, bottom: 30, top: 20),
            height: 180,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: job.companyLogo,
                    ),
                    SizedBox(width: 5),
                    Text(
                      job.workTitle,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Text(job.workSubTitle,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                Text(job.moneyRaised,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
                Text(job.investors,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getRecentJobs() {
    List<Widget> recentJobCards = [];
    List<Job> jobs = findJobs();
    for (Job job in jobs) {
      recentJobCards.add(getJobCard(job));
    }
    return recentJobCards;
  }

  List<Job> findJobs() {
    List<Job> jobs = [];
    jobs.add(Job(
        workTitle: 'Change.org',
        workSubTitle: 'create campaigns to mobilize supporters',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 56,000 raised',
        investors: '50 investors',
        days: '15 days left'));
    jobs.add(Job(
        workTitle: 'Crowdpac',
        workSubTitle: 'Make it easy to understand the laws Congress',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 92,000 raised',
        investors: '80 investors',
        days: '20 days left'));
    jobs.add(Job(
        workTitle: 'Vote.org',
        workSubTitle: 'Build technology aimed at increasing voter turnout',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 1,00,000 raised',
        investors: '4000 investors',
        days: '22 days left'));

    jobs.add(Job(
        workTitle: 'Communication',
        workSubTitle: 'Offer free, 24/7 text-message counseling',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 120,000 raised',
        investors: '5830 investors',
        days: '23 days left'));
    jobs.add(Job(
        workTitle: 'Pigeonly',
        workSubTitle: 'Create affordable communication products',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 140,000 raised',
        investors: '3762 investors',
        days: '24 days left'));
    return jobs;
  }
}
