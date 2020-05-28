Pod::Spec.new do |s|

  s.name         = "PLVSubtitle"
  s.version      = "0.1.2"
  s.summary      = "SRT 字幕解析组件，字幕显示组件。"
  s.description  = <<-DESC
  PLVSubtitle
  SRT 字幕解析组件，字幕显示组件。
                   DESC
  s.homepage     = "https://github.com/polyv/PLVSubtitle"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "bqlin" => "bqlins@163.com" }

  s.source       = { :git => "https://github.com/polyv/PLVSubtitle.git", :tag => "#{s.version}" }
  s.source_files  = "PLVSubtitle/**/*.{h,m}"
  s.requires_arc = true
  s.platform     = :ios, "8.0"

end
