#
# Be sure to run `pod lib lint mailcore2-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name         = "mailcore2-ios"
  spec.version      = "0.6.4"
  spec.summary      = "Mailcore 2 for iOS"
  spec.homepage     = "http://libmailcore.com"
  spec.license      = { :type => "BSD", :file => "LICENSE" }
  spec.author       = { "MailCore Authors" => "" }
  spec.source       = { :http => "http://d.etpan.org/mailcore2-deps/mailcore2-ios/mailcore2-ios-12.zip", :flatten => true }
  spec.platform = :ios, '8.0'
  spec.header_dir = "MailCore"
  spec.requires_arc = false
  spec.public_header_files = "include/MailCore/*.h"
  spec.preserve_paths = "include/MailCore/*.h"
  spec.vendored_libraries = "lib/libMailCore-ios.a"
  spec.libraries = "xml2", "iconv", "z", "c++", "resolv"

  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.prepare_command = "curl -O https://github.com/MailCore/mailcore2/raw/master/LICENSE"
end