
Pod::Spec.new do |s|
  s.name             = 'UIKitX'
  s.version          = '0.1.1'
  s.swift_version    = '5.0'
  s.summary          = 'UIKitX it is easy & powerful code for human use.'

  s.description      = <<-DESC
'UIKitX it is Big Freamwork easy & powerful code for human use.'
                       DESC

  s.homepage         = 'https://github.com/alialnaghmoush/UIKitX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alialnaghmoush' => 'alialnaghmoush@gmail.com' }
  s.source           = { :git => 'https://github.com/alialnaghmoush/UIKitX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'UIKitX/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIKitX' => ['UIKitX/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
