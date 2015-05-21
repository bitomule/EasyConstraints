#
#  Be sure to run `pod spec lint NSDate+RelativeFormatter.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "EasyConstraints"
  s.version      = "0.1.1"
  s.summary      = "Custom UIViewController displayed under navigation bar."

  s.description  = <<-DESC
                  Suit of custom swift operators to create NSLayoutConstraints.
                  * Easy to use
                  * Easy to understand
                   DESC

  s.homepage     = "https://github.com/bitomule/EasyConstraints"
  s.license      = "MIT"


  s.author             = { "David Collado Sela" => "bitomule@gmail.com" }
  s.social_media_url   = "http://twitter.com/bitomule"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/bitomule/EasyConstraints.git", :tag => "0.1.1" }

  s.source_files = 'Source/*.swift'
  s.requires_arc = true

end
