import "package:flutter/material.dart";
import "./user_model.dart";
import "./user_detail.dart";
class User extends StatelessWidget {
  final UserModel _user;

  User(this._user);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail(_user))),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Hero(
              tag: "avatar_" + _user.id.toString(),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(_user.avatar),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_user.name),
            )
          ],
        ),
      ),
    );
  }
}
