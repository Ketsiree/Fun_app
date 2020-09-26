import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Home.dart';
import '../LoginPage.dart';
// import 'package:firebase_core/firebase_core.dart';

class ActionLogin {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static signIn({BuildContext context,String email , String pass}){
    _auth.signInWithEmailAndPassword(
        email: email,
        password: pass
    ).then((person) {
      print("signed in ${person.user.email}");
      checkAuth(context);
    }).catchError((error) {
       print(error);
    });
  }


   static Future checkAuth(BuildContext context) async {
    FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      print("Already singed-in with");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
 
  static void f_print() {
    print('Hello');
  }

 static void signOut(BuildContext context) {
    _auth.signOut();
    // Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => LoginPage()),ModalRoute.withName('/'));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }
}
