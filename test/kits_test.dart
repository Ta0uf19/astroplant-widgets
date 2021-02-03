import 'package:app/data/kit/kit_ws.dart';
import 'package:app/di/injector_provider.dart';
import 'package:app/data/auth/auth_repository.dart';
import 'package:app/data/kit/kit_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setupInjection();
  var username = 'dtestd';
  var authRepository = inject<AuthRepository>();
  var kitRepository = inject<KitRepository>();

  test('login and get configurations/aggregations for a kit', () async {
    // login
    await authRepository.login(username, username);
    // get configuration
    var kitConfiguration = await kitRepository.getConfigurations(
        'k-9pd7-cdkc-cmm7');
    // get aggregation
    var kitAggregate = await kitRepository.aggregateMeasurements(
        'k-hvcx-p3qg-7dfq', peripheralId: 396, quantityTypeId: 4);

    print(kitConfiguration);
    print(kitAggregate);
  });

  test('real time websocket', () async {
      var ws = KitWebSocket();
      /// Send message to ws
      ws.subscribeMeasurements('k-hvcx-p3qg-7dfq');
      var stream = ws.getStreamMeasurements();

      // listen to events
      stream.listen(expectAsync1((message) {
          print(message);
          expect(message, isNotNull);
          ws.close();
        }, count: 4)
      );

      // stream.listen((event) {
      //   expect(event, equals('ping'));
      //   print(event);
      // });

  });

}