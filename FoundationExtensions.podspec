#
# Be sure to run `pod lib lint FoundationExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FoundationExtensions'
  s.version          = '0.1.0'
  s.summary          = 'Common foundation extensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Extend the Foundation framework with a set of common extensions across projects"

  s.homepage         = 'https://github.com/nsagora/foundation-extensions'
  s.license          = { :type => 'MIT License', :file => 'LICENSE' }
  s.author           = { 'Alex Cristea' => 'alexcristea@me.com' }
  s.source           = { :git => 'https://github.com/nsagora/foundation-extensions.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/nsagora'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Sources/*/*.swift'
end
