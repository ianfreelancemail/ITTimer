Pod::Spec.new do |s|
  s.name         = "ITTimer"
  s.version      = "0.0.1"
  s.summary      = "A timer that can be paused, resumed and stopped."
  s.description  = <<-DESC
  This framework is an open source that can be used by anyone for the countdown timer.
                   DESC
  s.homepage     = "https://github.com/ianfreelancemail/ITTimer"
  s.license      = "MIT"
  s.author       = { "Junda" => "junda@just2us.com" }
  s.source       = { :path => '.' }
  # s.source       = { :git => "https://github.com/ianfreelancemail/ITTimer", :tag => "#{s.version}" }
  s.source_files  = "Source/**/*.swift"
end