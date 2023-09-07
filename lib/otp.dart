import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safaimitra/BottomBar/bottomtap.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/login.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#FFFFFF"),
      body: Stack(children: [
        ListView(children: [
          Row(children: [
            IconButton(
              icon: Icon(Icons.arrow_back_outlined),
              color: Colors.black,
              iconSize: 28,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            SizedBox(
              width: 38,
            ),
            Text(
              "Enter Verification Code",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]),
        ]),
        Positioned(
          top: 5,
          right: 5,
          left: 45,
          child: Container(
            height: 550,
            width: 350,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#C3B1E1"),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 440,
          right: 260,
          left: 0,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#C3B1E1"),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                topRight: Radius.circular(100),
                // topLeft: Radius.circular(800),
                // bottomLeft: Radius.circular(800)
              ),
              // shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 630,
          left: 300,
          child: Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#C3B1E1"),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                topLeft: Radius.circular(100),
              ),
            ),
          ),
        ),
        Container(
          height: 900,
          padding:
              EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0, bottom: 10.0),
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "We have sent a verification code to",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "+9173******32",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 55.0, vertical: 15.0)),
                  child: const Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomTapBar()));
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
