Pod::Spec.new do |spec|
  spec.name         = "MailCore2"
  spec.version      = "0.6.4"
  spec.summary      = "Mailcore 2 for iOS"
  spec.description  = <<-DESC
                MailCore 2 provide a simple and asynchronous API to work with e-mail protocols IMAP, POP and SMTP.
                   DESC
  spec.homepage     = "http://libmailcore.com"
  spec.license      = { :type => "BSD", :file => "LICENSE" }
  spec.author       = { "MailCore Authors" => "" }
  spec.source       = { :http => "https://github.com/Cleverlance/mailcore2-ios/raw/master/mailcore2-ios.zip" }
  spec.ios.deployment_target = "8.0"
  spec.header_dir = "MailCore"
  spec.requires_arc = false
  spec.public_header_files = "include/MailCore/*.h"
  spec.preserve_paths = "*"
  spec.ios.vendored_library = "lib/libMailCore-ios.a"
  spec.module_map = 'module.modulemap'
  spec.libraries = "xml2", "iconv", "z", "c++", "resolv"
  spec.prepare_command = "curl -O https://github.com/MailCore/mailcore2/raw/master/LICENSE"
end
