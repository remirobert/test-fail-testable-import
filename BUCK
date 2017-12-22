apple_asset_catalog(
  name = 'Assets',
  app_icon = 'AppIcon',
  dirs = ['app/Assets.xcassets'],
)

apple_resource(
  name = 'appResources',
  files = glob(['app/*.png', 'app/**/*.storyboard']),
)

apple_bundle(
  name = 'app',
  binary = ':appBinary',
  extension = 'app',
  info_plist = 'app/Info.plist',
  tests = [':appTests']
)

apple_binary(
  name = 'appBinary',
  deps = [':appResources', ':Assets'],
  srcs = glob([
    'app/**/*.swift'
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
  ]
)

apple_package(
  name = 'appPackage',
  bundle = ':app'
)

apple_test(
  name = 'appTests',
  test_host_app = ':app',
  run_test_separately = True,
  info_plist = 'appTests/Info.plist',
  srcs = glob([
    'appTests/**/*.swift'
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
  ]
)