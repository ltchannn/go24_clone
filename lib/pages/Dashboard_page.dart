import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:go24_app/pages/SelectClub.dart';
import 'package:go24_app/models/Go24_branches.dart';

class DashboardScreen extends StatelessWidget {
  final Branch branch;
  const DashboardScreen({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        titleSpacing: 15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'images/IMG_8151.PNG',
                    //height: 100,
                    //width: 100,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "go24fitness-hk",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey, width: 0.1),
                ),
                margin: EdgeInsets.all(5),
                //height: 200,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/location_tag.png'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'GO24 FITNESS TSUEN WAN',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Open today:',
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                    Text(
                      '24h',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 0.1),
                      ),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/membership_tag.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'My Memberships',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SelectClubScreen(branch: branch),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.1),
                        ),
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('images/qrcode_tag.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'My QR Code',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.1),
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 30.0,
                          left: 40,
                        ),
                        child: Container(
                            height: 100,
                            width: 150,
                            child: Image.asset(
                              'images/goal_tag.png',
                              fit: BoxFit.fill,
                            )),
                      ),
                      //SizedBox(height: 20,),
                      Text(
                        'No goal yet',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'You know when is the best time to set your first',
                        style: TextStyle(fontSize: 15, color: Colors.brown),
                      ),
                      Text(
                        'goal? Right now! :-)',
                        style: TextStyle(fontSize: 15, color: Colors.brown),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.deepOrange, width: 0.5),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Set new goal',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.deepOrange),
                              )))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.1),
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30.0,
                        left: 10,
                      ),
                      child: Image.asset(
                        'images/classes_tag.png',
                      ),
                    ),
                    //SizedBox(height: 20,),
                    Text(
                      'No upcoming classes',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Ready to book your first class? Check out the',
                      style: TextStyle(fontSize: 15, color: Colors.brown),
                    ),
                    Text(
                      'options at your club!',
                      style: TextStyle(fontSize: 15, color: Colors.brown),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.deepOrange, width: 0.5),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Book your classes',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.deepOrange),
                            )))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  border: Border.all(color: Colors.grey, width: 0.1),
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(25),
                height: 200,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Text(
                            'Referral Program',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Invite your friends and family to',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'earn awesome benefits!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            //margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black, width: 0.1),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                )))
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image.asset('images/IMG_8264.PNG'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
