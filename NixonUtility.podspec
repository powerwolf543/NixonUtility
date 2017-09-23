Pod::Spec.new do |s|
  s.name      = 'NixonUtility'
  s.version   = '0.04'
  s.license = 'MIT'
  s.ios.deployment_target  = '10.0'
  s.summary   = 'Nixon commonly used tools.'
  s.homepage  = 'https://www.facebook.com/xiaolangs'
  s.social_media_url = 'https://www.facebook.com/xiaolangs'
  s.author    = { 'NixonShih' => 'powerwolf543@gmail.com' }
  s.source    = { :git => "https://github.com/powerwolf543/NixonUtility.git", :tag => s.version }
  s.source_files = 'Source/*.swift'
  s.frameworks    = 'Foundation', 'UIKit'
end