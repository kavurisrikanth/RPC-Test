import '../components/MyPage.dart';
import '../components/ThemeWrapper.dart';
import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class PageNavigator {
  BuildContext ctx;
  PageNavigator(this.ctx);
  static PageNavigator of(BuildContext ctx) {
    return PageNavigator(ctx);
  }

  Widget wrapTheme(Widget widget) {
    MediaQueryData mediaQuery = MediaQuery.of(ctx);

    return ThemeWrapper(
        data: StyleThemeData.current,
        child: Overlay(initialEntries: [
          OverlayEntry(
              builder: (_) =>
                  Padding(padding: mediaQuery.padding, child: widget))
        ]));
  }

  void push(bool replace, Widget widget, String title, String path) {
    if (kIsWeb) {
      if (replace) {
        window.history.replaceState(null, title, path);
      } else {
        window.history.pushState(null, title, path);
      }
    }

    widget = wrapTheme(widget);

    if (replace) {
      Navigator.pushReplacement(
          ctx, PageRouteBuilder(pageBuilder: (ctx, _, __) => widget));
    } else {
      Navigator.push(
          ctx, PageRouteBuilder(pageBuilder: (ctx, _, __) => widget));
    }
  }

  void pop() {
    Navigator.pop(ctx);
  }

  void pushMyPage({bool replace = true}) {
    push(replace, MyPage(), '', '#my-page');
  }

  void applyTheme({String theme}) {
    switch (theme) {
      case 'basic':
        {
          StyleThemeData.current = StyleThemeData.createbasic();
          break;
        }
      default:
        {
          StyleThemeData.current = StyleThemeData.createbasic();
        }
    }
  }

  List<String> getProjectThemeNames() {
    return ['basic'];
  }

  String getCurrentThemeName() {
    return StyleThemeData.current.themeName;
  }
}
