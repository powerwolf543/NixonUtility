Pod::Spec.new do |s|
  s.name      = 'NixonUtility'
  s.version   = '1.0.0'
  s.license = 'MIT'
  s.summary   = 'Nixon commonly used tools.'
  s.author    = { 'NixonShih' => 'powerwolf543@gmail.com' }
  s.homepage     = "https://twitter.com/powerwolf543"
  s.source    = { :git => "https://github.com/powerwolf543/NixonUtility.git", :tag => s.version }
  s.source_files = 'Source/*.swift'
  s.platform     = :ios, "10.0"
  s.ios.deployment_target  = '10.0'
  s.frameworks    = 'Foundation', 'UIKit'
end