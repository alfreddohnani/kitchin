import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatelessWidget {
  static const String id = "signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Text(
                      'Sign up with work email',
                      style: Theme.of(context).textTheme.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Email with organization’s domain name is required',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 50.0,
            ),
            Container(
              width: 400.0,
              height: 60.0,
              child: OutlineButton.icon(
                icon: Icon(Ionicons.logo_google),
                label: Text(
                  'Sign In with Google',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () => null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
