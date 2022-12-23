import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() => runApp(MaterialApp(
  home: ProfileTypeScreen(),
));

class ProfileTypeScreen extends StatefulWidget {
  const ProfileTypeScreen({Key? key}) : super(key: key);
  @override
  State<ProfileTypeScreen> createState() => ProfileTypeScreenState();
}

class ProfileTypeScreenState extends State<ProfileTypeScreen> {

  String user_type = "";
  static String show_user_type = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "selectProfile".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child: RadioListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.warehouse_outlined,
                                size: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "shipper".tr,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet\nconsectetur adipiscing"
                                  )
                                ],
                              )
                            ],
                          ),
                          value: "shipper",
                          groupValue: user_type,
                          onChanged: (value){
                            setState(() {
                              user_type = value.toString();
                              show_user_type = user_type;
                            });}
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child: RadioListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.local_shipping_outlined,
                                size: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "transporter".tr,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet\nconsectetur adipiscing"
                                  )
                                ],
                              )
                            ],
                          ),
                          value: "transporter",
                          groupValue: user_type,
                          onChanged: (value){
                            setState(() {
                              user_type = value.toString();
                              show_user_type = user_type;
                            });}
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/welcomeScreen');
                    },
                    child: Text("next".tr)),
              ),
            ],
          ),
        ),
      ),
    );
  }

}