#
# Be sure to run `pod lib lint JXGradientNavigationBar.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JXGradientNavigationBar"
  s.version          = "0.1.1"
  s.summary          = "Custom UINavigationBar subclass with gradient colors on iOS."
  s.homepage         = "https://github.com/swordray/JXGradientNavigationBar"
  s.license          = 'MIT'
  s.author           = { "Jianqiu Xiao" => "swordray@gmail.com" }
  s.source           = { :git => "https://github.com/swordray/JXGradientNavigationBar.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'JXGradientNavigationBar/**/*'

  s.frameworks = 'UIKit'
end
