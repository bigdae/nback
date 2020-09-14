import 'package:engtree/nback.dart';
import 'package:engtree/post.dart';
import 'package:engtree/postHelper.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:engtree/example.dart';

class MockNback extends Mock implements Nback {

}

main() {
  group('arrayList', () {
    test('make array list', () async {
      final mocknBack = Nback();

      mocknBack.makeList(10);
      var list = mocknBack.getList();
      print(list);

      expect(false, await mocknBack.getList().isEmpty);

      mocknBack.getOXValue();
    });

    test('speak', () async {
      final mocknBack = Nback();
      mocknBack.play_music();
    });
  });
}
