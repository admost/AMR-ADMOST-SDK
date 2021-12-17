Pod::Spec.new do |s|
  s.name             = 'AMRAdmostSDK'
  s.version          = '1.0.12'
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
  s.source_files = 'AMRAdmostSDK/AMRAdmostSDK.framework/Headers/*.h'
  s.public_header_files = 'AMRAdmostSDK/AMRAdmostSDK.framework/Headers/*.h'
  s.vendored_frameworks = 'AMRAdmostSDK/AMRAdmostSDK.framework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.dependency 'KokteylLog', '~> 1.0'
  s.dependency 'AMRSDK', '~> 1.5.0'
end
