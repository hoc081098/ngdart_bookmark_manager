import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'bookmark-scaffold',
  templateUrl: 'bookmark_scaffold_component.html',
  styleUrls: [
    'bookmark_scaffold_component.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
  directives: [
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialToggleComponent,
  ],
)
class BookmarkScaffoldComponent {}
