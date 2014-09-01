Pod::Spec.new do |s|
  s.name             = "UIAlertView-NSErrorAddition"
  s.version          = "0.1.0"
  s.summary          = "UIAlertView + NSError category library."
  s.homepage         = "https://github.com/azu/UIAlertView-NSErrorAddition"
  s.screenshots      = "http://monosnap.com/image/wJypNE3I2daqBECDae1T8T0tOvcbip.png"
  s.license          = 'MIT'
  s.author           = {"azu" => "azuciao@gmail.com"}
  s.source           = {:git => "https://github.com/azu/UIAlertView-NSErrorAddition.git", :tag => s.version.to_s}
  s.social_media_url = 'https://twitter.com/azu_re'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
