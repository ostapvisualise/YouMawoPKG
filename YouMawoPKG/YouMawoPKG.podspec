Pod::Spec.new do |s|
  s.name             = 'YouMawoPKG'
  s.version          = '1.0.1'
  s.summary          = 'Set of tools to drastically improve development speed of UI in iOS applications'

  s.description      = 'test YouMawoPackage'

  s.homepage         = 'https://github.com/ostapvisualise/YouMawoPKG.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MSHAKH' => 'mshah@tsukat.com }
  s.source           = { :git => 'https://github.com/ostapvisualise/YouMawoPKG.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
    "ios": "9.0"
  }
end
