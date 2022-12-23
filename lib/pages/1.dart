import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(
  home: LanguageScreen(),
));

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);
  @override
  State<LanguageScreen> createState() => LanguageScreenState();
}

class LanguageScreenState extends State<LanguageScreen> {

  List <String> languages = ["English", "Hindi"];
  String initial_language = "English";

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
              Icon(
                Icons.image_outlined,
                size: 50,
              ),
              Text(
                  "selectLanguage".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  )
              ),
              Text(
                "changeLanguage".tr,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                    fontSize: 13
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: DropdownButton <String>(
                  value: initial_language,
                  items: languages.map((item)=>DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: TextStyle(fontSize: 15)),
                  )).toList(),
                  onChanged: (item){
                      if(initial_language == "Hindi"){
                        var locale = Locale('hi', "IN");
                        Get.updateLocale(locale);
                      }else{
                        var locale = Locale('en',"US");
                        Get.updateLocale(locale);
                      }
                      setState(()=>initial_language=item!);
                    },
                  isExpanded: true,
                ),
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/phoneNoScreen');
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
