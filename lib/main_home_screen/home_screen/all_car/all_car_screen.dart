import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../widgets/custom_appbar.dart';

class AllCarScreen extends StatelessWidget {
  const AllCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      
      appBar: const CustomAppBar(title:'All Car',
        isBackShown: false,
        isDrawerIconShown: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            ListView.builder(
                itemCount: 10,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Column(

                    children: [
                      SizedBox(height: 3.h,),
                      AllCarShow(vehicle: 'XYZ123',engineNumber: 'XYZ123',maker: 'XYZ123',manafacture: '20-02-2022',model: 'XYZ123',vin: 'XYZ123',),


                    ],
                  );
                }

            )


          ],
        ),
      ),
    ),

    );


  }
}

class AllCarShow extends StatelessWidget {
   AllCarShow({
    Key? key,
    required this.vehicle,
    required this.maker,
    required this.manafacture,
    required this.model,
    required this.vin,
    required this.engineNumber,
  }) : super(key: key);
String? vehicle;
String? manafacture;
String? maker;
String? model;
String? engineNumber;
String? vin;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,

      width:  double.infinity,
      decoration:  const BoxDecoration (
        image:  DecorationImage (
          fit: BoxFit.cover,
          opacity: 0.1,
          image:  AssetImage (
              'assets/car.png',


          ),
        ),

      ),
      child:
      Row(
        crossAxisAlignment:  CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                Text(
                  'Vehicle Number :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),
                Text(
                  'Maker :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),
                Text(
                  'Manafacture Year :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),
                Text(
                  'Model :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),
                Text(
                  'Engine Number :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),
                Text(
                  'VIN :',
                  style:  GoogleFonts.outfit (

                    fontSize:  18.sp,
                    fontWeight:  FontWeight.w400,

                    color:  Color(0xff5A5757),
                  ),
                ),

            ],
          ),
          SizedBox(width: 3.w,),
          Column(
            children: [

              Flexible(
                child: Container(
                  child:
                  Text(
                    '$vehicle',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child:
                  Text(
                    '$maker',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child:
                  Text(
                    '$manafacture',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child:
                  Text(
                    '$model',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child:
                  Text(
                    '$engineNumber',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child:
                  Text(
                    '$vin',

                    style:  GoogleFonts.outfit (

                      fontSize:  18.sp,
                      fontWeight:  FontWeight.w600,

                      color:  Color(0xff2c2b34),
                    ),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
