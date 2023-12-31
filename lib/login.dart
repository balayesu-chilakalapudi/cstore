import 'package:flutter/material.dart';
import 'package:cstore/signup.dart';
import 'package:cstore/utils/CustomBorder.dart';
import 'package:cstore/utils/CustomColors.dart';
import 'package:cstore/utils/CustomTextStyle.dart';
import 'package:cstore/utils/CustomUtils.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Builder(builder: (context) {
        return Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image(
                    image: AssetImage("images/ic_logo.png"),
                    color: Colors.blue,
                    height: 140,
                    alignment: Alignment.center,
                    width: 200),
                flex: 40,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                            border: CustomBorder.enabledBorder,
                            labelText: "Mobile No. or Email",
                            focusedBorder: CustomBorder.focusBorder,
                            errorBorder: CustomBorder.errorBorder,
                            enabledBorder: CustomBorder.enabledBorder,
                            labelStyle: CustomTextStyle.textFormFieldMedium
                                .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                      ),
                      Utils.getSizedBox(height: 20)/* creates a space of height 20 between two vertical components */,
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                            border: CustomBorder.enabledBorder,
                            labelText: "Password",
                            focusedBorder: CustomBorder.focusBorder,
                            errorBorder: CustomBorder.errorBorder,
                            enabledBorder: CustomBorder.enabledBorder,
                            labelStyle: CustomTextStyle.textFormFieldMedium
                                .copyWith(fontSize: MediaQuery.of(context).textScaleFactor * 16, color: Colors.black)),
                        obscureText: true,
                      ),
                      Utils.getSizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Home()));
                          },
                          child: Text(
                            "LOGIN",
                            style: CustomTextStyle.textFormFieldRegular.copyWith(color: Colors.white, fontSize: 14),
                          ),
                          style:ElevatedButton.styleFrom(primary:Colors.blue, onPrimary: Colors.white)
                         /* color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),*/
                        ),
                      ),
                      Utils.getSizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: Text(
                            "Forget Password?",
                            style: CustomTextStyle.textFormFieldBold.copyWith(color: Colors.blue, fontSize: 14),
                          ),
                        ),
                      ),
                      Utils.getSizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.grey.shade200,
                              margin: EdgeInsets.only(right: 16),
                              height: 1,
                            ),
                            flex: 40,
                          ),
                          Text(
                            "Or",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(fontSize: 14),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.shade200,
                              margin: EdgeInsets.only(left: 16),
                              height: 1,
                            ),
                            flex: 40,
                          )
                        ],
                      ),
                      Utils.getSizedBox(height: 14),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "FACEBOOK LOGIN",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(color: Colors.white, fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(primary: CustomColors.COLOR_FB, onPrimary: Colors.white),
                          /*color: CustomColors.COLOR_FB,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),*/
                        ),
                      ),
                      Utils.getSizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(fontSize: 14),
                          ),
                          Utils.getSizedBox(width: 4),
                          GestureDetector(
                            child: Text(
                              "Sign Up",
                              style: CustomTextStyle.textFormFieldBold.copyWith(fontSize: 14, color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => SignUp()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                flex: 60,
              )
            ],
          ),
        );
      }),
    );
  }
}
