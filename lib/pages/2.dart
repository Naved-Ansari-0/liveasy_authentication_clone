import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(
  home: PhoneNoScreen(),
));

class PhoneNoScreen extends StatefulWidget {
  const PhoneNoScreen({Key? key}) : super(key: key);
  @override
  State<PhoneNoScreen> createState() => PhoneNoScreenState();
}

class PhoneNoScreenState extends State<PhoneNoScreen> {

  String phone_no = "";
  static String verify = "";
  static String show_phone_no = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25,50,0,0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,100),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 25,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "enterPhone".tr,
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
                  "receiveOTP".tr,
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
                    child: IntlPhoneField(
                      decoration: InputDecoration( //decoration for Input Field
                        labelText: 'phNo'.tr,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                        // print(phone.countryCode);
                        // print(phone.number);
                        phone_no = phone.completeNumber;
                        show_phone_no = phone.completeNumber;
                      },
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () async{
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: phone_no,
                          verificationCompleted: (PhoneAuthCredential credential) {},
                          verificationFailed: (FirebaseAuthException e) {},
                          codeSent: (String verificationId, int? resendToken) {
                            PhoneNoScreenState.verify = verificationId;
                            Navigator.pushNamed(context, '/otpScreen');
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );

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