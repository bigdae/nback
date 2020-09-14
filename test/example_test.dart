import 'package:engtree/post.dart';
import 'package:engtree/postHelper.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:engtree/example.dart';

class MockPostHelper extends Mock implements PostHelper {}

main() {
  group('formatPostTitle', () {
    test('when post is new', () async {
      final mockedPostHelper = MockPostHelper();

      when(mockedPostHelper.isNewPost(any))
          .thenReturn(true);

      Post post = new Post(
        title: 'Flutter/Dart Tutorial',
      );

      Example example = new Example.withMocks(postHelper: mockedPostHelper);
      expect('[New] Flutter/Dart Tutorial', await example.formatPostTitle(post));
    });


    test('when post is not new', () async {
      final mockedPostHelper = MockPostHelper();

      when(mockedPostHelper.isNewPost(any))
          .thenReturn(false);

      Post post = new Post(
        title: 'Flutter/Dart Tutorial',
      );

      Example example = new Example.withMocks(postHelper: mockedPostHelper);
      expect('Flutter/Dart Tutorial', await example.formatPostTitle(post));
    });
  });
}