import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yuque/blocs/repos.bloc.dart';
import 'package:yuque/services/repo.service.dart';
import 'package:yuque/utils/storage.dart';

import 'package:yuque/services/validate_token.service.dart';

import 'package:yuque/views/home.page.dart';
import 'package:yuque/views/login.page.dart';

import 'package:yuque/widgets/loading.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(new Duration(seconds: 1), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    var storage = await Storage.getInstance();
    bool _seen = (storage.getBool('seen') ?? false);
    var token = storage.getString('auth-token');

    if (_seen) {
      if (token == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else {
        bool validate = await Token.validate(token);
        if (validate) {
          final repos = await RepoService.getUserRepos();
          reposbloc.add(repos);

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      }
    } else {
      storage.setBool('seen', true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Loading(),
      ),
    );
  }
}
