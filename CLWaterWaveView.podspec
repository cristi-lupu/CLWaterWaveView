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
  s.source           = { :git => 'https://github.com/cristiLupu/CLWaterWaveView.git', :tag => '1.0' }
  s.social_media_url = 'https://twitter.com/LupuCrist'
  s.social_media_url = 'https://vk.com/lupu.cristian'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'Sources/**/*'

end
