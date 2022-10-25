import 'package:flutter/material.dart';
// import 'package:loginuicolors/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/registerimage.png"
              ),
              fit: BoxFit.cover
          ),
      ),
      child: Scaffold(

        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.symmetric(horizontal: 150),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/icons/logo.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 130),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                  Text(
                    'Sign in and continue managing you finances',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),

                          TextButton(

                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.pink,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff3D5BA3),
                                child: TextButton(
                                  child: Image.asset('assets/icons/fbicon.png'),
                                  onPressed: () {
                                  },
                                ),
                              ),
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff114EE3),
                                child: TextButton(
                                  child: Image.asset('assets/icons/twicon.png'),
                                  onPressed: () {
                                  },
                                ),
                              ),
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xffEF9A7B),
                                child: TextButton(
                                  child: Image.asset('assets/icons/gicon.png'),
                                  onPressed: () {
                                  },
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
