
Pod::Spec.new do |s|

  s.name         = "YCPublicFramework"
  s.version      = "1.0.0"
  s.summary      = "In our remote horizon development commonly used tools, and now open out for everyone to use!"
  s.description  = <<-DESC
       It is a marquee view used on iOS, which implement by Objective-C，In our remote horizon development commonly used tools！
                   DESC
  s.homepage     = "https://github.com/dongshangtong/YCPublicFramework"
  s.license      = "MIT"
  s.author             = { "dongshangtong" => "dongshangtong@163.com" }
  # Or just: s.author    = "新华网络"
  # s.authors            = { "新华网络" => "xinhua_ios@163.com" }
  # s.social_media_url   = "http://twitter.com/新华网络"
   s.platform     = :ios
  # s.platform     = :ios, "5.0"
   s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/dongshangtong/YCPublicFramework.git", :tag => "#{s.version}" }
  s.source_files  = "YCPublicFramework", "YCPublicFramework/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
