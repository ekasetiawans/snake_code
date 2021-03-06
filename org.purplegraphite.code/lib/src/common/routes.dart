import 'package:code/src/models/view_model/editor_controller.dart';
import 'package:code/src/ui/screens/workspace_explorer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Constant String screen's path address
import '../common/routing_const.dart';

// Screens
import '../../main.dart';
import '../ui/screens/browser.dart';
import '../ui/screens/editor.dart';
import '../ui/screens/settings.dart';
import '../ui/screens/start.dart';
import '../ui/screens/terminal.dart';

// Models
import '../models/view_model/browser_controller.dart';
import '../models/view_model/terminal_controller.dart';

/// Wraps [screen] with a [PageRoute]
PageRoute<T> wrapPageRoute<T>(Widget screen,
    [bool useCupertinoPageRoute = true]) {
  if (useCupertinoPageRoute) {
    return CupertinoPageRoute<T>(builder: (context) => screen);
  }
  return MaterialPageRoute<T>(
    builder: (context) => screen,
  );
}

/// Generates Routes which will be used in the application
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case StartScreenRoute:
      return wrapPageRoute<StartScreen>(StartScreen());
    case EditorScreenRoute:
      return wrapPageRoute<EditorScreen>(
        ChangeNotifierProvider(
          create: (context) => EditorController(settings.arguments),
          child: EditorScreen(),
        ),
      );
    case BrowserScreenRoute:
      return wrapPageRoute<BrowserScreen>(
        ChangeNotifierProvider(
          create: (context) => BrowserController(),
          child: BrowserScreen(
            dir: settings.arguments,
          ),
        ),
      );
    case SettingsScreenRoute:
      return wrapPageRoute<SettingsScreen>(SettingsScreen());
    case WorkspaceExplorerScreenRoute:
      return wrapPageRoute<WorkspaceExplorerScreen>(
        ChangeNotifierProvider(
          create: (context) => BrowserController(),
          child: WorkspaceExplorerScreen(),
        ),
      );
    case TerminalScreenRoute:
      return wrapPageRoute<TerminalScreen>(
        ChangeNotifierProvider(
          create: (context) => TerminalController(),
          child: TerminalScreen(),
        ),
      );
    case RootRoute:
    default:
      return wrapPageRoute<Root>(
        Root(
          key: RootRouteKey,
        ),
      );
  }
}
