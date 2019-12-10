Pod::Spec.new do |s|
  s.name             = 'XRouter'
  s.version          = '2.0.0'
  s.summary          = 'Navigate anywhere in just one line.'

  s.description      = <<-DESC
Decouple your controllers using abstract routing.

Define application-level routes, add powerful deep-linking and stop writing
the same boilerplate over and over.
                       DESC

  s.homepage         = 'https://github.com/hubrioAU/XRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Reece Como' => 'reece@hubr.io' }
  s.source           = { :git => 'https://github.com/hubrioAU/XRouter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'

  s.source_files = 'Router/Classes/*.swift'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
      ss.source_files = 'Router/Classes/*.swift', 'Router/Classes/Extensions/*.swift', 'Router/Classes/URLMatcher/*.swift'
      ss.framework  = 'Foundation'
      ss.framework  = 'UIKit'
  end

  s.subspec 'RxSwift' do |ss|
      ss.dependency 'XRouter/Core'
      ss.dependency 'RxSwift', '~> 4.0'

      ss.source_files = 'Router/Classes/RxSwift/*.swift'
  end

end
