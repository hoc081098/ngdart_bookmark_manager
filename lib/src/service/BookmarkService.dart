import 'dart:async';

import 'package:angular/angular.dart';
import 'package:ngdart_bookmark_manager/src/model/bookmark.dart';

@Injectable()
class BookmarkService {
  List<Bookmark> get bookmarks => List.generate(10, (index) {
        return Bookmark(
          id: index.toString(),
          description: 'Description $index',
          title: 'Title $index',
          url: 'url$index.com',
        );
      });
}
