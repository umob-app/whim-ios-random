Pod::Spec.new do |s|
  s.name             = 'WhimRandom'
  s.version          = '0.2.0'
  s.summary          = 'Lightweight Random Utils for Testing 🎲'

  s.description      = <<-DESC
Seedable Xoroshiro random generator • Random extensions for Swift standard types • Sourcery templates for autogenerating Random for custom types
                       DESC

  s.homepage         = 'https://gist.github.com/a-voronov/12fcc2139fa2d14e31b256b57ef83f27'
  s.license          = { :type => 'MIT' }
  s.author           = { 'MaaS Global' => 'tech@maas.fi' }
  s.source           = { :git => 'https://github.com/maasglobal/whim-ios-random.git', :tag => "wr-#{s.version.to_s}"}

  s.ios.deployment_target = '14.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |cs|
    cs.source_files = 'Sources/WhimRandom/**/*.{swift,stencil}'
    cs.resource_bundles = {
      'Resources' => ['Sources/Resources/**/*.json', 'Sources/Resources/**/*.yml']
    }
  end

  s.subspec 'Templates' do |ts|
    ts.dependency 'Core'
    ts.resources = 'Sources/WhimRandom/Templates/**/*.{stencil}'
  end
end
