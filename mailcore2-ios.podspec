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
  spec.source       = { :git => "https://github.com/Cleverlance/mailcore2-ios.git" }
  spec.platform = :ios, '10.0'
  spec.requires_arc = false
  spec.source_files = ['include/**/*.{h,mm}','include/*.{h,mm}','include/TSVoiceConverter.swift']
  spec.vendored_libraries = "lib/*.a"
  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  spec.libraries = "xml2", "iconv", "z", "c++", "resolv"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.preserve_path = '*'
  spec.prepare_command = <<-CMD
    unzip -f ./mailcore2-ios.zip;
    curl -O https://github.com/MailCore/mailcore2/raw/master/LICENSE
  CMD

end
