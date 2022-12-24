import 'package:flutter/cupertino.dart';

class ForgotScreenViewModel extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController oldController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();


  bool _isLoading = false;


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

  handleUpdate(){
    print('login click');
    if(formKey.currentState!.validate()){

    }
  }
}