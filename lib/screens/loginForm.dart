import 'package:flutter/material.dart';

class _LOGINPAGE extends StatefulWidget {
  const _LOGINPAGE({super.key});

  @override
  State<_LOGINPAGE> createState() => __LOGINPAGEState();
}

class __LOGINPAGEState extends State<_LOGINPAGE> {
  @override
  Widget build(BuildContext context) {
    var txtfld;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                controller: txtfld,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50),)
                  ),
                  prefixIcon:Icon(Icons.search)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}