#
# Be sure to run `pod lib lint CLWaterWaveView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CLWaterWaveView'
  s.version          = '1.0'
  s.summary          = 'Water Wave Effect on iOS'

  s.description      = <<-DESC
A UIView what able to show water wave effect
                       DESC

  s.homepage         = 'https://github.com/cristiLupu/CLWaterWaveView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lupu Cristian' => 'lupucristiancptc@gmail.com' }
  s.source           = { :git => 'https://github.com/cristiLupu/CLWaterWaveView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/LupuCrist'
  s.social_media_url = 'https://vk.com/lupu.cristian'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'CLWaterWaveView/Classes/**/*'

end
