// https://github.com/dart-lang/language/blob/master/accepted/future-releases/sealed-types/feature-specification.md

sealed class BestMobileDevTools {}

class Flutter extends BestMobileDevTools {}

class Dart extends BestMobileDevTools {}

sealed class MobileDevTools {}

class KotlinNative extends MobileDevTools {}

sealed class HybridBasedMobileDevTools extends MobileDevTools {}

class FlutterMobileDevTools extends HybridBasedMobileDevTools {}

class ReactMobileDevTools extends HybridBasedMobileDevTools {}

sealed class NativeBasedMobileDevTools extends MobileDevTools {}

class AndroidMobileDevTools extends NativeBasedMobileDevTools {}

class IOSMobileDevTools extends NativeBasedMobileDevTools {}
