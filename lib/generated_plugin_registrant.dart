//
// Generated file. Do not edit.
//

// ignore: unused_import
import 'dart:ui';

import 'package:native_pdf_renderer/src/web/native_pdf_renderer_plugin.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(PluginRegistry registry) {
  NativePdfRendererPlugin.registerWith(registry.registrarFor(NativePdfRendererPlugin));
  UrlLauncherPlugin.registerWith(registry.registrarFor(UrlLauncherPlugin));
  registry.registerMessageHandler();
}
