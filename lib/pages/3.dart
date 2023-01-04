import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_clone/pages/2.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(
  home: OTPScreen(),
));

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);
  @override
  State<OTPScreen> createState() => OTPScreenState();
}

class OTPScreenState extends State<OTPScreen> {

  String currentText = "";

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    var code = "";
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25,50,0,0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,100),
                child: Container(
                  width: 300,
                  height: 40,
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "verifyPhone".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
                  , textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "codeSent".tr + "${PhoneNoScreenState.show_phone_no}",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                      fontSize: 13
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: Pinput(
                    length: 6,
                    showCursor: false,
                    onChanged: (value){
                        code = value;
                    },

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () async{
                        try{
                          PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: PhoneNoScreenState.verify, smsCode: code);
                          await auth.signInWithCredential(credential);
                          Navigator.pushNamedAndRemoveUntil(context, '/profileTypeScreen', (route) => false);
                        }
                        catch(e){
                          print("wrong otp");
                        }
                        // Navigator.pushNamed(context, '/profileTypeScreen');
                      },
                      child: Text("continue".tr)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}