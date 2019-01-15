Pod::Spec.new do |spec|
  spec.name         = 'ITTimer'
  spec.version      = '1.0.0'
  spec.license      = 'MIT'
  spec.homepage     = 'https://github.com/ianfreelancemail/ITTimer'
  spec.authors      = { 'Ian Talisic' => 'ianfreelancemail@gmail.com' }
  spec.summary      = 'A timer that can be paused, resumed or stopped.'
  spec.source       = { git: 'https://github.com/ianfreelancemail/ITTimer.git', tag: spec.version }
  spec.source_files = 'Sources/*.swift'
  spec.swift_version = '4.2'
  spec.requires_arc = true
  spec.ios.deployment_target = '10.0'
end