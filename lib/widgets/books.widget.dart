import 'package:flutter/material.dart';
import 'package:yuque/widgets/repo_list.widget.dart';
import 'package:yuque/widgets/user_info.widget.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
            child: UserInfo(),
          ),
          RepoList(),
        ],
      ),
    );
  }
}
