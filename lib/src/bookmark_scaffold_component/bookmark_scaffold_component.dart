import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:ngdart_bookmark_manager/src/model/bookmark.dart';
import 'package:ngdart_bookmark_manager/src/service/BookmarkService.dart';

@Component(
    selector: 'bookmark-scaffold',
    templateUrl: 'bookmark_scaffold_component.html',
    styleUrls: [
      'package:angular_components/app_layout/layout.scss.css',
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
      'bookmark_scaffold_component.css',
    ],
    directives: [
      DeferredContentDirective,
      MaterialButtonComponent,
      MaterialIconComponent,
      MaterialListComponent,
      MaterialListItemComponent,
      MaterialPersistentDrawerDirective,
      coreDirectives,
    ],
    providers: [
      ClassProvider(BookmarkService)
    ])
class BookmarkScaffoldComponent implements OnInit {
  final BookmarkService bookmarkService;

  BookmarkScaffoldComponent(this.bookmarkService);

  List<Bookmark> bookmarks = [];

  @override
  void ngOnInit() {
    bookmarks = bookmarkService.bookmarks;
  }

  void toggleEdit(int index) {
    final bookmark = bookmarks[index];
    bookmarks[index] = bookmark.copyWith(edit: !bookmark.edit);
  }
}
