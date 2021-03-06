Pod::Spec.new do |s|
  s.name                  = "PKHUDObjC"
  s.version               = "0.0.1"
  s.summary               = "A Object-C based reimplementation of the Apple HUD (Volume, Ringer, Rotation,…) for iOS 7"
  s.homepage              = "https://github.com/pomozoff/AKAssetsBug"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { "Anton Pomozov" => "pomozoff@gmail.com" }
  s.platform              = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source                = { :git => "https://github.com/pomozoff/AKAssetsBug.git", :tag => s.version.to_s }
  s.source_files          = 'Classes/**/*'
  s.public_header_files   = 'Classes/**/*.h'
  s.resources             = "Resources/*.xcassets"
  s.frameworks            = 'UIKit', 'Foundation'
  s.requires_arc          = true
end
