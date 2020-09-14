import 'dart:async';

import 'package:engtree/post.dart';
import 'package:engtree/postHelper.dart';

class Example {
  PostHelper postHelper;

  Example() {
    this.postHelper = new PostHelper();
  }

  Example.withMocks({ this.postHelper });

  String formatPostTitle(Post post) {
    bool isNew = postHelper.isNewPost(post);

    return isNew ? '[New] ${post.title}' : post.title;
  }

  Future<bool> isPostActive(int id) async {
    try {
      Post post = await postHelper.fetchPost(id);
      return post.active == true;
    } catch (err) {
      return false;
    }
  }
}

