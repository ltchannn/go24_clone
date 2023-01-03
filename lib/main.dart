import 'package:flutter/material.dart';
import 'package:go24_app/models/Go24_branches.dart';
import 'package:go24_app/pages/BottomNavBar.dart';
import 'package:go24_app/google/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go24_app/pages/SelectClub.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:go24_app/pages/Dashboard_page.dart';
import 'package:go24_app/pages/FindClubs_page.dart';
import 'package:go24_app/pages/Classes_page.dart';
import 'package:go24_app/pages/Profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => ChangeNotifierProvider(
              create: (context) => GoogleSignInProvider(),
              child: MaterialApp(
                navigatorKey: navigatorKey,
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                //      home: LoginScreen(),
                home: StreamBuilder<User?>(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ClassesScreen();
                    } else {
                      return Center(child: Text('error...'));
                    }
                  },
                ),
              ),
            ));
  }
}


