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
  s.homepage         = 'https://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Sumon Mia' => 'https://github.com/sumonwd/' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'
  s.swift_version = '5.0'
  
  s.preserve_paths = 'Frameworks/*.framework'
  s.vendored_frameworks = 'Frameworks/*.framework'
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'NO',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.xcconfig = { 
    "OTHER_LDFLAGS" => '$(inherited) -framework "ExternalAccessory" -framework "CoreBluetooth" -framework "StarIO" -framework "StarIO_Extension"'
  }
end
