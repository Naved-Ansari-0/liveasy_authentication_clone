import 'package:get/get.dart';

class LocaleString extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    //ENGLISH LANGUAGE
    'en_US':{
      'selectLanguage':'Please select your language',
      'changeLanguage':'You can change the language at any time.',
      'next':'NEXT',
      'enterPhone':'Please enter your phone number',
      'receiveOTP':'You will receive a 6 digit code to verify next.',
      'phNo': 'Phone Number',
      'continue':'Continue',
      'verifyPhone':'Verify Phone',
      'codeSent':'Code is sent to',
      'selectProfile':'Please select your profile',
      'shipper':'Shipper',
      'transporter':'transporter',
    },
    //HINDI LANGUAGE
    'hi_IN':{
      'selectLanguage':'कृपया अपनी भाषा चुनें',
      'changeLanguage':'आप किसी भी समय भाषा बदल सकते हैं।',
      'next':'अगला',
      'enterPhone':'कृपया अपना फोन नंबर दर्ज करें',
      'receiveOTP':'आगे सत्यापित करने के लिए आपको 6 अंकों का कोड प्राप्त होगा।',
      'phNo': 'फ़ोन नंबर',
      'continue':'जारी रखें',
      'verifyPhone':'फ़ोन सत्यापित करें',
      'codeSent':'कोड भेजा जाता है',
      'selectProfile':'कृपया अपनी प्रोफ़ाइल का चयन करें',
      'shipper':'शिपर',
      'transporter':'ट्रांसपोर्टर',
    },
  };

}