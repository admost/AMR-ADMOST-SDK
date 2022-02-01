Pod::Spec.new do |s|
  s.name             = 'AMRAdmostSDK-Beta'
  s.version          = '1.0.15'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
									Copyright 2016
									Admost Mediation Limited. 
									LICENSE
								}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Admost Adserver SDK.'
  s.description      = <<-DESC
Admost Adserver is a powerful ad serving tool to maximize your ad revenues for your apps and games from all major ad networks.
                       DESC
  s.source           = { :git => 'https://github.com/admost/AMR-ADMOST-SDK.git',
 								 :tag => s.version.to_s }
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdmostSDK/AMRAdmostSDK.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }

  s.dependency 'KokteylLog', '~> 1.1.1'
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
end
