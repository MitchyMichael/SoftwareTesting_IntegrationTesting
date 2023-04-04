
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hands_on/main.dart' as app;

void main(){
  group("Intergration Test", () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("Counter App", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      //Verifikasi label
      expect(find.text('0'), findsOneWidget);

      final Finder fab = find.byKey("_fab" as Key);
      //final Finder fab = find.byTooltip("Increment");

      await tester.tap(fab);
      await tester.pumpAndSettle();

      expect(find.text("1"), findsOneWidget);
    });
  });
}