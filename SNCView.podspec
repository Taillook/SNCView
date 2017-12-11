#
# Be sure to run `pod lib lint SNCView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SNCView'
  s.version          = '0.1.0'
  s.summary          = 'SNCView is PageViewController Extention.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
You can use SnapChat likes Paging.
                       DESC

  s.homepage         = 'https://github.com/Taillook/SNCView'
  # s.screenshots     = ''
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Taillook' => 'jousoku@gmail.com' }
  s.source           = { :git => 'https://github.com/Taillook/SNCView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Taillook'

  s.ios.deployment_target = '11.0'

  s.source_files = 'SNCView/Classes/**/*'

  # s.resource_bundles = {
  #   'SNCView' => ['SNCView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 
end
