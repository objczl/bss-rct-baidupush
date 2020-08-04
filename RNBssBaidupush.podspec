
Pod::Spec.new do |s|
  s.name         = "RNBssBaidupush"
  s.version      = "1.0.0"
  s.summary      = "RNBssBaidupush"
  s.description  = <<-DESC
                  RNBssBaidupush
                   DESC
  s.homepage     = "https://objczl.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/objczl/RNBssBaidupush.git", :tag => "master" }
  s.source_files  = "ios/RNBssBaidupush.{h,m}"
  s.requires_arc = true
  s.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
  s.libraries = 'z'
  s.default_subspecs = 'normal'

  s.subspec 'normal' do |sp|
    sp.source_files = 'ios/normalversion/*.h'
    sp.public_header_files = 'ios/normalversion/*.h'
    sp.vendored_libraries = 'ios/normalversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end

  s.dependency "React"
  #s.dependency "others"

end


