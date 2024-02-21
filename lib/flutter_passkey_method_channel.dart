import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_passkey_platform_interface.dart';

/// An implementation of [FlutterPasskeyPlatform] that uses method channels.
class MethodChannelFlutterPasskey extends FlutterPasskeyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_passkey');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
