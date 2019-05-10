# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MedicalCode' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MedicalCode
  pod 'Cosmos', '~> 16.0'
  pod 'MarqueeLabel/Swift','~> 3.1.4'
  pod 'IQKeyboardManagerSwift'
  pod 'TextFieldEffects', '~> 1.4.0'
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'AlamofireObjectMapper', '~> 5.0'
  pod 'SDWebImage'

end
post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end

end
