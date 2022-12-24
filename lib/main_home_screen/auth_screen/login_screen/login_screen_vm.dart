import 'package:auto_master/main_home_screen/auth_screen/forgot_password/forgot_password_screen.dart';
import 'package:auto_master/main_home_screen/home_screen/add_car/add_car_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/utils.dart';

class LoginScreenViewModel extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  bool _isLoading = false;
  TextEditingController get emailControll=>_emailcontroller;
  TextEditingController get passwordController=>_passwordController;

  bool get isLoading => _isLoading;
  bool _isShowPassword = false;
  bool get isShowPassword => _isShowPassword;

  toggleIsShowPassword() {
    _isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void setIsLoading(bool newValue) {
    _isLoading = newValue;
    notifyListeners();
  }

  handleLogin(BuildContext context){
    print('login click');
    if(_emailcontroller.text.isNotEmpty && _passwordController.text.isNotEmpty){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
       return AddCarScreen();
     }));
    }else{
    Utils.okAlertDialog(context, 'Please enter email and password');
    }
  }
}