import 'package:flutter/cupertino.dart';

class AddCarViewModel extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  TextEditingController _vehiclecontroller = TextEditingController();
  TextEditingController _makerController = TextEditingController();
  TextEditingController _manafactureController = TextEditingController();
  TextEditingController _modelController = TextEditingController();
  TextEditingController _engineController = TextEditingController();
  TextEditingController _vinController = TextEditingController();

  TextEditingController get vehiclecontroller =>_vehiclecontroller;
  TextEditingController get makerController =>_makerController;
  TextEditingController get manafactureController =>_manafactureController;
  TextEditingController get modelController =>_modelController;
  TextEditingController get engineController =>_engineController;
  TextEditingController get  vinController =>_vinController;

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