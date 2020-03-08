#
# Be sure to run `pod lib lint EHDSecurity.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EHDSecurity'
  s.version          = '0.3.2'
  s.summary          = 'A short description of EHDSecurity.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/luohuasheng0225@163.com/EHDSecurity'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'luohuasheng0225@163.com' => 'luohuasheng0225@gmail.com' }
  # s.source           = { :svn => 'https://10.7.12.91/repo/EHDiOS/trunk/EHDComponentRepo/EHDSecurity', :tag => s.version.to_s }
  s.source           = { :git => 'http://gitlab.tf56.lo/tfic-frontend-client/ios-components-repo/common/ehdsecurity.git', :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  #s.source_files = 'EHDSecurity/Classes/**/*.{m,mm,h,swift}'

  s.subspec 'BlurSnapshot' do |ss|
    ss.source_files = 'EHDSecurity/Classes/BlurSnapshot/*.{m,mm,h,swift}'
    #s.dependency 'UIViewController/Topmost', '>= 1.0.0'
    s.dependency 'UIImage/Blurry', '>= 0.5.3'
  end

  s.subspec 'SecurityStrategy' do |ss|
    ss.source_files = 'EHDSecurity/Classes/SecurityStrategy/*.{m,mm,h,swift}'
    ss.dependency 'EHDSecurity/BlurSnapshot'
    ss.dependency 'EHDComponent', '>= 0.4.0'
  end

  s.subspec 'SecurityUtilities' do |ss|
    ss.source_files = 'EHDSecurity/Classes/SecurityUtilities/*.{m,mm,h,swift}'
  end

  #可以防止App被注入dylib(仅限于iOS10以下系统)
  #s.xcconfig = { 'OTHER_LDFLAGS' => '-Wl,-sectcreate,__RESTRICT,__restrict,/dev/null' }

  #s.libraries = ['c++', 'sqlite3.0']
  #s.frameworks   =  "Accelerate"
  #s.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Base.framework'
  #s.vendored_libraries = "BaiduMapKit/thirdlibs/*.a"

  # s.resource_bundles = {
  #   'EHDSecurity' => ['EHDSecurity/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
