Pod::Spec.new do |s|
  s.name = 'NixonUtility'
  s.version = '1.1.0'
  s.license = 'MIT'
  s.summary = 'Nixon commonly used tools.'
  s.author = { 'NixonShih' => 'powerwolf543@gmail.com' }
  s.homepage = "https://twitter.com/powerwolf543"
  s.source = { :git => "https://github.com/powerwolf543/NixonUtility.git", :tag => s.version }
  s.source_files = 'Source/*.swift'

  s.ios.deployment_target  = '10.0'
  s.osx.deployment_target = '10.12'
  s.watchos.deployment_target = '4.0'

  s.frameworks = 'Foundation', 'UIKit'
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }

  # Foundation
  s.subspec 'Foundation' do |sp|
    sp.source_files  = 'Source/Foundation/*.swift'
  end

  # Foundation Extensions
  s.subspec 'FoundationExtension' do |sp|
    sp.source_files  = 'Source/FoundationExtension/*.swift'
  end

  # UIKit
  s.subspec 'UIKit' do |sp|
    sp.source_files  = 'Source/UIKit/*.swift'
  end

  # UIKit Extensions
  s.subspec 'FoundationExtension' do |sp|
    sp.source_files  = 'Source/UIKitExtension/*.swift'
  end

end