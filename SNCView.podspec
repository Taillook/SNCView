Pod::Spec.new do |s|
  s.name         = "SNCView"
  s.version      = "0.1.5"
  s.platform = :ios, "11.0"
  s.summary      = "PageView with ViewControllersArray."
  s.homepage     = "https://github.com/Taillook/SNCView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Taillook" => "jousoku@gmail.com" }
  s.social_media_url   = "http://twitter.com/Taillook"
  s.source       = { :git => "https://github.com/Taillook/SNCView.git", :tag => "#{s.version}" }
  s.source_files  = "SNCView/*.swift"
  s.frameworks = 'UIKit'
end
