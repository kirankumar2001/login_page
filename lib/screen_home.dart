import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_page/home.dart';

class screenHome extends StatelessWidget {
  const screenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Login Page',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                hintText: 'Email or Phone'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              hintText: 'Password',
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeSwitch()));
                              },
                              child: Text('Login'))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Model App'),
      ),
    );
  }

  Future Homeswitch() async {}
}
