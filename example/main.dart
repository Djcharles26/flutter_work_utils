import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column (
            children: [
              Text (
                DateTime.now ().dateString, //dates
                style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: getColorContrast( // font_color_switcher
                    colorFromString("ff000000")! // color_parse
                  )
                ),
              ),
              Text (
                "hola12".diggest, //diggester
                style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: getColorContrast( // color_parse
                    Theme.of(context).backgroundColor 
                  )
                ),
              ),
              ElevatedButton (
                child: Text ("Unfocus", style: Theme.of(context).textTheme.headline4,),
                onPressed: () => unfocus (context), // unfocus
              ),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}