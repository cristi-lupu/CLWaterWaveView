Pod::Spec.new do |s|
  s.name             = 'CLWaterWaveView'
  s.version          = '1.2'
  s.summary          = 'Water Wave Effect on iOS'

  s.description      = <<-DESC
A UIView what able to show water wave effect
                       DESC

  s.homepage         = 'https://github.com/cristi-lupu/CLWaterWaveView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cristian Lupu' => 'lupucristiancptc@gmail.com' }
  s.source           = { :git => 'https://github.com/cristiLupu/CLWaterWaveView.git', :tag => '1.2' }
  s.social_media_url = 'https://twitter.com/LupuCrist'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'Sources/**/*'

end
