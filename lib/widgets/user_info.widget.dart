import 'package:flutter/material.dart';
import 'package:yuque/blocs/provider.dart';
import 'package:yuque/blocs/user.bloc.dart';
import 'package:yuque/models/user_detail.model.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: userbloc,
      child: _UserInfo(),
    );
  }
}

class _UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: userbloc.stream,
      initialData: userbloc.stream.value,
      builder: (BuildContext context, AsyncSnapshot<UserDetailModel> snapshot) {
        UserDetailModel user = snapshot.data;
        return Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                minRadius: 40.0,
                maxRadius: 40.0,
                backgroundImage: NetworkImage(user.avatar_url),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
