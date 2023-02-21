
import 'package:flutter/material.dart'; 
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator_tutorial/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
   
    await tester.pumpWidget( const MyApp());

    // Sayacımızın 0'dan başladığını doğrulayın.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    
    // '+' simgesine dokunun ve bir çerçeveyi tetikleyin.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Sayacımızın arttığını doğrulayın.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
