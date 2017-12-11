#
# Be sure to run `pod lib lint SNCView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "SNCView"
  s.version      = "0.1.1"
  s.summary      = 'You can use SnapChat likes Paging.'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = "https://github.com/Taillook/SNCView"
  s.author       = { "Taillook" => "jousoku@gmail.com" }
  s.social_media_url   = "http://twitter.com/Taillook"
  s.source       = { :git => "https://github.com/Taillook/SNCView.git", :tag => "0.1.1" }
  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.source_files = 'SNCView/*.swift'
  s.frameworks = 'UIKit'

end
