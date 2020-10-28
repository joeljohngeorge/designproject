import 'package:expensemonitor/screens/homepage.dart';
import 'package:expensemonitor/screens/signuppage.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  final _passcon = TextEditingController();
  final _idcon = TextEditingController();
  bool _validatePass = false;
   bool _validateid=false;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Login", style: TextStyle(fontSize: 25)))),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
            EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            builduserid("User id"),
            SizedBox(
              height: 20.0,
            ),
            buildpassword("Password"),
            SizedBox(height: 20.0),
            buildButtonLogin(),
            SizedBox(
              width: 20.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("or"),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  buildButtonSignup(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
 Widget buildpassword(String hintText) {
    return TextField(
      controller:  _passcon,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon:
             Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
             errorText: _validatePass ? 'Password should not be null.Atleast 8 characters' : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

   Widget builduserid(String hintText) {
    return TextField(
        controller: _idcon,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(Icons.email),
          errorText: _validateid ? 'Enter a user id.' : null,
        ));
  }

 

  Widget buildButtonLogin() {
    return RaisedButton(
      onPressed: () {
         setState(() {
           if(_idcon.text.isEmpty){
            _validateid=true;
          }
          else{
            _validateid=false;
          }
           if (_passcon.text.isEmpty || _passcon.text.length < 8) {
            _validatePass = true;
          } else {
            _validatePass = false;
          }
        if(_validateid==false &&
         _validatePass==false){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );}

        });
      },
      color: Colors.greenAccent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Login",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }

  Widget buildButtonSignup() {
    return RaisedButton(
      onPressed: () {
        
      
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signuppage()),
        );
      },
      color: Colors.orangeAccent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Sign up",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}


