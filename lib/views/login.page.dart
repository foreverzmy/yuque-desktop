import 'package:flutter/material.dart';
import 'package:yuque/services/validate_token.service.dart';
import 'package:yuque/utils/storage.dart';
import 'package:yuque/views/home.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController _controller = new TextEditingController();

  test() {
    _formKey.currentState?.validate();
  }

  onSubmit() async {
    if (this._formKey.currentState.validate()) {
      var token = this._controller.text;
      bool validate = await Token.validate(token);

      if (validate) {
        var storage = await Storage.getInstance();
        await storage.setString("auth-token", token);

        Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey, //设置globalKey，用于后面获取FormState
        autovalidate: true, //开启自动校验
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "请输入语雀 Token",
                style: TextStyle(fontSize: 25.0),
              ),
              Container(
                width: 400.0,
                padding: EdgeInsets.only(
                  top: 20.0,
                  bottom: 25.0,
                ),
                child: TextFormField(
                  controller: _controller,
                  autofocus: true,
                  validator: (v) {
                    if (v.isEmpty) {
                      return "请输入语雀 Token";
                    }
                    if (v.trim().length > 40) {
                      return '请输入正确的语雀 Token';
                    }
                  },
                ),
              ),
              RaisedButton(
                child: Text("确定"),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                colorBrightness: Brightness.dark,
                onPressed: onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
