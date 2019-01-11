import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
        image: AssetImage("assets/background.jpg"),
        fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
            decoration: BoxDecoration(image: _buildBackgroundImage()),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'E-Mail',
                            filled: true,
                            fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value) {
                          setState(() {
                            _emailValue = value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white),
                        obscureText: true,
                        onChanged: (String value) {
                          setState(() {
                            _passwordValue = value;
                          });
                        },
                      ),
                      SwitchListTile(
                        value: _acceptTerms,
                        onChanged: (bool value) {
                          setState(() {
                            _acceptTerms = value;
                          });
                        },
                        title: Text('Accept Terms'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text('LOGIN'),
                        onPressed: () {
                          print(_emailValue);
                          print(_passwordValue);
                          Navigator.pushReplacementNamed(context, '/products');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
