import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sixdreams_machine_test/features/dashboard.dart';
import 'package:sixdreams_machine_test/provider/profilestate_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [ChangeNotifierProvider(create: (context){
        return ProfileStateprovider();
      })],
      child: MaterialApp(
        theme: ThemeData.dark(),
        
        home: Dashboard(),
       
      ),
    );
  }
}

