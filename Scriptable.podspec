#
# Be sure to run `pod lib lint Scriptable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Scriptable'
  s.version          = '0.1.4'
  s.summary          = 'Run any terminal command through macOS apps by conforming to Scriptable protocol'
  s.swift_version    = '5.0'

  s.description      = 'Create a GUI macOS app for more productivity to set all your commands and run them by conforming to Scriptable protocol and using runTask method, for more example check the attached example project'

  s.homepage         = 'https://github.com/cs4alhaider/Scriptable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cs4alhaider' => 'cs.alhaider@gmail.com' }
  s.source           = { :git => 'https://github.com/cs4alhaider/Scriptable.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/cs_alhaider'

  s.platform = :osx
  s.osx.deployment_target = "10.10"

  s.source_files = 'Scriptable/Classes/**/*'

end
