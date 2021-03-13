import 'package:actual_mad_library_app/Dependencies/AuthenticationService.dart';
import 'package:actual_mad_library_app/Pages/StorePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/LoginPage.dart';
import 'Pages/MyHomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        title: 'Library App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Library"),
            actions: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      context.read()<AuthenticationService>().signOut();
                    },
                  );
                },
              ),
            ],
          ),
          body: AuthenticationWrapper(),
        ),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      print(firebaseUser.email);
      return
          MyHomePage();
    }
    return LoginPage();
  }
}
