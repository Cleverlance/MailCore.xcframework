Pod::Spec.new do |spec|
  spec.name               = "MailCore"
  spec.version            = "1.1.0"
  spec.summary            = "MailCore2 distribution via CocoaPods"
  spec.description        = "..."
  spec.homepage           = "https://github.com/Cleverlance/MailCore.xcframework"
  spec.documentation_url  = "..."
  spec.license            = { :type => "MIT" }
  spec.author             = { "Vit Michal" => "vit.michal@cleverlance.com" }
  spec.source             = { :git => 'your repo here', :tag => "#{spec.version}" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "13.0"

  # Published binaries
  spec.vendored_frameworks = "MailCore.xcframework"
end
