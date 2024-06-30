#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_star_printer.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_star_printer'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for Star Micronics printers..'
  s.description      = <<-DESC
A Flutter plugin for Star Micronics printers..
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

   # Add dependencies for StarIO and StarIO_Extension
   s.dependency 'StarIO', '2.9.0'
   s.dependency 'StarIO_Extension', '1.15.0'

  # Preserve and vendor the Star Micronics frameworks
  s.preserve_paths = 'Frameworks/*.framework'
  s.vendored_frameworks = 'Frameworks/StarIO.framework', 'Frameworks/StarIO_Extension.framework'

  # Specify the framework search paths
  s.xcconfig = { 
    'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/../.symlinks/plugins/flutter_star_prnt/ios/Frameworks',
    'OTHER_LDFLAGS' => '$(inherited) -framework "ExternalAccessory" -framework "CoreBluetooth"'
  }

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
