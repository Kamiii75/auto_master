import 'package:auto_master/main_home_screen/home_screen/all_car/all_car_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constant/textfield_valodator.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/default_buttton.dart';
import '../../../widgets/default_text_field.dart';
import 'add_car_vm.dart';

class AddCarScreen extends StatelessWidget {
  const AddCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AddCarViewModel(),
      child: Consumer<AddCarViewModel>(
        builder: (_, model, __) {
          return SafeArea(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  appBar: const CustomAppBar(
                    title: 'Add Car',
                    isBackShown: true,
                    isDrawerIconShown: false,
                  ),
                  body: Form(
                    key: model.formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3.h,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.vehiclecontroller,
                                hintText: 'Vehicle Number',
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.makerController,
                                hintText: 'Maker',
                                maxLines: 1,
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.manafactureController,
                                hintText: 'Manafacture Year',
                                maxLines: 1,
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.modelController,
                                hintText: 'Model',
                                maxLines: 1,
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.engineController,
                                hintText: 'Engine Number',
                                maxLines: 1,
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: DefaultTextField(
                                controller: model.vinController,
                                hintText: 'VIN',
                                maxLines: 1,
                                validator: validateNormalField,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 40.w,
                                height: 9.h,
                                child: DefaultButton(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AllCarScreen();
                                    }));
                                  },
                                  text: 'Add',
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                                height: 9.h,
                                child: DefaultButton(
                                  onTap: () {},
                                  text: 'Cancel',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )));
        },
      ),
    );
  }
}
