#
# Be sure to run `pod lib lint Rhea.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SectionReader'
  s.version          = '1.0.0'
  s.summary          = 'Read consecutive data of same type from Mach-O section.'

  s.description      = <<-DESC
  Read consecutive data of same type from Mach-O section. This is frequently used to read registration information, including but not limited to routing configurations, event handlers, and other registration-based data.
                       DESC

  s.homepage         = 'https://github.com/reers/SectionReader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Asura19' => 'x.rhythm@qq.com' }
  s.source           = { :git => 'https://github.com/reers/SectionReader.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = "10.15"
  s.watchos.deployment_target = "7.0"
  s.tvos.deployment_target = "13.0"
  s.visionos.deployment_target = "1.0"
  
  s.swift_versions = '5.10'

  s.source_files = 'Sources/**/*.swift'

end
