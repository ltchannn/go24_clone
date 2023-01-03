import 'package:flutter/material.dart';
import 'package:go24_app/models/Go24_branches.dart';

class QrCodeScreen extends StatelessWidget {
  final Branch branch;
  const QrCodeScreen({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(branch.branchName),
        backgroundColor: Colors.white,
        
      ),
      body: Center(child: Text('a')),);
  }
}