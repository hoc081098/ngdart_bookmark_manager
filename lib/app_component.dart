import 'package:angular/angular.dart';
import 'package:ngdart_bookmark_manager/src/bookmark_scaffold_component/bookmark_scaffold_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [BookmarkScaffoldComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
