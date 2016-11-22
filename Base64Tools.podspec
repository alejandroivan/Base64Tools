#
# Be sure to run `pod lib lint Base64Tools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Base64Tools'
  s.version          = '0.0.1'
  s.summary          = 'UIImage/NSString categories to quickly convert UIImage objects to Base64 NSString and vice-versa.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UIImage and NSString Objective-C categories to quickly convert UIImage instances to Base64 NSString equivalents and vice-versa.
                       DESC

  s.homepage         = 'https://github.com/alejandroivan/Base64Tools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alejandro Iván Melo Domínguez' => 'alejandroivan@ingenieros.com' }
  s.source           = { :git => 'https://github.com/alejandroivan/Base64Tools.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alejandroivan'

  s.ios.deployment_target = '7.0'

  s.source_files = 'Base64Tools/*'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
