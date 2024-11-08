import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../core/colors/colors.dart';
import '../widget/app_text.dart';
import 'otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child:
          AppText(
            text: "Enter your phone number",
            fontSize: 20,
            color: mainColor,
            fontWeight: FontWeight.bold,
          )),
        AppText(text: "whatsApp will need to verify your phone number"),

          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              height: 80,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: mainColor),
                  ),
                ),
              child: IntlPhoneField(
                keyboardType: TextInputType.phone,
                controller: phoneController,
              initialCountryCode: 'EG',
                onChanged: (phone){
                  print(phone);
                },
                decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                     hintText:"phone number",
                    ),
                  ),
            ),
            ),
          SizedBox(height: 300,),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context)=> OtpScreen(phone: phoneController.text,)));
          },
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor
                  ),
              child: AppText(text: "Next",color: Colors.white,))
      ],),
    );
  }

}
