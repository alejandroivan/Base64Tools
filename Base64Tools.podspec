Pod::Spec.new do |s|
  s.name             = 'Base64Tools'
  s.version          = '0.0.1'
  s.summary          = 'UIImage/NSString categories to quickly convert UIImage objects to Base64 NSString and vice-versa.'

  s.description      = <<-DESC
UIImage and NSString Objective-C categories to quickly convert UIImage instances to Base64 NSString equivalents and vice-versa.
                       DESC

  s.homepage         = 'https://github.com/alejandroivan/Base64Tools'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alejandro Iván Melo Domínguez' => 'alejandroivan@icloud.com' }
  s.source           = { :git => 'https://github.com/alejandroivan/Base64Tools.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alejandroivan'

  s.ios.deployment_target = '7.0'

  s.source_files = 'Base64Tools/*'
  s.frameworks = 'UIKit', 'Foundation'
end
