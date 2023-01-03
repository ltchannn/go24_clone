import 'package:flutter/material.dart';
import 'package:go24_app/pages/BottomNavBar.dart';
import 'package:go24_app/pages/QrCode.dart';
import 'package:go24_app/models/Go24_branches.dart';


class SelectClubScreen extends StatelessWidget {
  final Branch branch;
  const SelectClubScreen({super.key, required this.branch});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Select Club'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    child: ListView(
                      padding: const EdgeInsets.all(8.0),
                      shrinkWrap: true,
                      children: <Widget>[
                        for (int i=0; i<branches.length;i++)
                        ListTile(
                          title: Text(branch.branchName),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => QrCodeScreen(branch: branch,),
                              ),
                            );
                          },
                        ),
                        Divider(),
                        
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
