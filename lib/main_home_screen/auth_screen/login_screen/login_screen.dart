import 'package:auto_master/main_home_screen/auth_screen/login_screen/login_screen_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/container_decoration.dart';
import '../../../core/constant/string.dart';
import '../../../core/constant/textfield_valodator.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/default_buttton.dart';
import '../../../widgets/default_text_field.dart';
import '../../../widgets/suffix_icon.dart';
import '../forgot_password/forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LoginScreenViewModel(),
      child: Consumer<LoginScreenViewModel>(
        builder: (_, model, __) {
          return SafeArea(
              child: Scaffold(
                resizeToAvoidBottomInset: false,

                  body: Form(
                    key: model.formKey,
                    child: Column(

                      children: [
                        SizedBox(height: 10.h,),
                        Container(
                          // welcomebackmuL (1:795)
                          margin:  EdgeInsets.all(8.0),
                          child:
                          Text(
                            'auto master',
                            style:  GoogleFonts.outfit (

                              fontSize:  26.sp,
                              fontWeight:  FontWeight.w700,
                              height:  0.2.h,
                              color:  Color(0xff464444),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: DefaultTextField(
                              controller: model.emailControll,
                              hintText: 'admin',

                              validator: validateEmailField,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: DefaultTextField(
                              controller: model.passwordController,
                              obscureText: model.isShowPassword,
                              hintText: 'password',
                              suffixIcon: model.isShowPassword
                                  ? CustomSuffixIcon(
                                icon: Icons.visibility_outlined,
                                onPressed: model.toggleIsShowPassword,
                              )
                                  : CustomSuffixIcon(
                                icon: Icons.visibility_off_outlined,
                                onPressed: model.toggleIsShowPassword,
                              ),
                              maxLines: 1,

                              validator: validateNormalField,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return ForgotPassword();
                                  }));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Forgot Password ?',
                                    style:  GoogleFonts.outfit (

                                      fontSize:  16.sp,
                                      fontWeight:  FontWeight.w500,

                                      color:  Color(0xff2c2626),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 6.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 10.h,
                            child: DefaultButton(
                              onTap: () {
                                model.handleLogin(context);
                                //Navigator.pop(context);
                              },
                              text: 'Login',
                            ),
                          ),
                        ),

                      ],
                    ),
                  )



              ));
        },
      ),
    );
  }
}
