Pod::Spec.new do |spec|
  spec.name               = "MailCore"
  spec.version            = "1.0.0"
  spec.summary            = "MailCore2 distribution via CocoaPods"
  spec.description        = "..."
  spec.homepage           = "..."
  spec.documentation_url  = "..."
  spec.license            = { :type => "MIT" }
  spec.author             = { "..." => "..." }
  spec.source             = { :git => 'your repo here', :tag => "#{spec.version}" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "10.0"

  # Published binaries
  vendored_frameworks = "MailCore.xcframework"
end