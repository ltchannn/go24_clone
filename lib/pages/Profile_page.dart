import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.black12,
                  //height: 15.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black26),
                    ),
                  ),
                  child: Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.red.shade400,
                            child: Icon(
                              Icons.male_outlined,
                              size: 40,
                            ),
                          ),
                          Text(
                            //(user.displayName == null)
                            //    ? user.uid
                            //    : 'hi, ${user.displayName!}',
                            'aa',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Text(
                              //user.email!,
                              'aa',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                         
                        ]),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      //height: 55.h,
                      child: ListView(
                        padding: const EdgeInsets.all(8.0),
                        shrinkWrap: true,
                        children: const <Widget>[
                          ListTile(
                            title: Text(
                              "General",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('My Activities'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Membership'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('My Goals'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              'Preferences',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('Settings'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('App & Intergration'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Terms of use & privacy policy'),
                          ),
                        ],
                      ),
                    ),
                   
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.red.shade900,
                            minimumSize: Size(double.infinity, 70)),
                        onPressed: () {
                          //FirebaseAuth.instance.signOut();
                          //final provider = Provider.of<GoogleSignInProvider>(
                          //    context,
                          //    listen: false);
                          //provider.googleLogOut();
                          //final snackBar2 = SnackBar(
                          //  content: Row(
                          //    children: const <Widget>[
                          //      FaIcon(FontAwesomeIcons.lock),
                          //      SizedBox(
                          //        width: 10,
                          //      ),
                          //      Text("Signed out"),
                          //    ],
                          //  ),
                          //);
                          //ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.logout_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Log out from the app',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}