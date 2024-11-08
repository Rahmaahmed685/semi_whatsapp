import 'package:flutter/material.dart';
import 'package:semi_whatsapp/view/send_otp.dart';
import '../core/colors/colors.dart';
import '../core/controller.dart';
import '../widget/app_text.dart';
import 'home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phone});
final String phone;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @override
  void initState() {
   // phoneAuth();
    super.initState();
  }
  final phoneController = TextEditingController();
 String? verifid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(text: "Verifing your number",fontSize: 25,),
          AppText(text: "we have sent an sms to ${widget.phone}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextFieldOtp(controller:c1 ,first:true ,last: false, correct: false,),
              TextFieldOtp(controller:c2 ,first:false ,last: false, correct: false,),
              TextFieldOtp(controller:c3 ,first:false ,last: false, correct: false,),
              TextFieldOtp(controller:c4 ,first:false ,last: false, correct: false,),
              TextFieldOtp(controller:c5 ,first:false ,last: false, correct: false,),
              TextFieldOtp(controller:c6 ,first:false ,last: true, correct: false,),


                  ],),
          SizedBox(height: 300,),
          ElevatedButton(onPressed: () {
            //sentCode();
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context)=> HomeScreen()));
          },

              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor
              ),
              child: AppText(text: "Confirm",color: Colors.white,))
        ],),
    );
  }
}
