import 'package:flutter/material.dart';
import 'package:login_signup/core/custom_btm_text.dart';
import 'package:login_signup/core/custom_btn_login.dart';
import 'package:login_signup/core/custom_login_cont.dart';
import 'package:login_signup/core/global_elevatedbtn.dart';
import 'package:login_signup/core/global_text.dart';
import 'package:login_signup/core/global_textfield.dart';
import 'package:login_signup/core/utils/screen_size.dart';
import 'package:login_signup/core/utils/space.dart';
import 'package:login_signup/modules/login/login_screen.dart';
import 'package:login_signup/modules/signup/controller/signup_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController emailSignup = TextEditingController();
  TextEditingController passwordSignup = TextEditingController();
  TextEditingController cPasswordSignup = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenSize.screenHeight(context),
            width: ScreenSize.screenWidth(context),
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: ScreenSize.screenHeight(context),
            width: ScreenSize.screenWidth(context),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.8),
                  Colors.black
                ])),
          ),
          SizedBox(
            height: ScreenSize.screenHeight(context),
            width: ScreenSize.screenWidth(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spaces.large,
                    Spaces.large,
                    Align(
                      alignment: Alignment.topCenter,
                      child: customTextWidget(
                          text: 'Signup',
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                    Spaces.large,
                    customTextWidget(
                        text: 'User Name',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    Spaces.smallh,
                    customTextField(controller: username, hintext: 'User Name'),
                    Spaces.mid,
                    customTextWidget(
                        text: 'Email',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    Spaces.smallh,
                    customTextField(
                        controller: emailSignup, hintext: 'Email Address'),
                    Spaces.mid,
                    customTextWidget(
                        text: 'Password',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    Spaces.smallh,
                    Consumer<SignupProvider>(
                      builder: (context, provider, child) {
                        return customTextField(
                            controller: passwordSignup,
                            hintext: 'Password',
                            showPw: provider.showPw,
                            onClickBtn: () {
                              if (provider.showPw == true) {
                                provider.changePasswordShow(false);
                              } else {
                                provider.changePasswordShow(true);
                              }
                            },
                            showVisible: true);
                      },
                    ),
                    Spaces.mid,
                    customTextWidget(
                        text: 'Confirm Password',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    Spaces.smallh,
                    Consumer<SignupProvider>(
                      builder: (context, provider, child) {
                        return customTextField(
                            controller: cPasswordSignup,
                            hintext: 'Confirm Password',
                            showPw: provider.showConfPw,
                            onClickBtn: () {
                              if (provider.showConfPw == true) {
                                provider.changeConfPassShow(false);
                              } else {
                                provider.changeConfPassShow(true);
                              }
                            },
                            showVisible: true);
                      },
                    ),
                    Spaces.large,
                    Spaces.smallh,
                    customElevatedBtn(context, 'Signup'),
                    Spaces.large,
                    customLoginWithContainer(context, 'Or signup with'),
                    Spaces.smallh,
                    customLoginWithBtn(context),
                    Spaces.large,
                    Spaces.large,
                    customBtmText('Already have an account! ', 'Login', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
