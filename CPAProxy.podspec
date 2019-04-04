Pod::Spec.new do |s|
  s.name            = "CPAProxy"
  s.version         = "1.2.16"
  s.summary         = "CPAProxy is a thin Objective-C wrapper around Tor."
  s.author          = "Claudiu-Vlad Ursache <claudiu.vlad.ursache@gmail.com>"

  s.homepage        = "https://github.com/TungstenLabs/CPAProxy"
  s.license         = { :type => 'MIT', :file => 'LICENSE.md' }
  s.source          = { :git => "https://github.com/TungstenLabs/CPAProxy", :tag => s.version.to_s }
  s.prepare_command = <<-CMD
    export PLATFORM_TARGET="iOS"
    bash ./scripts/build-all.sh
    export PLATFORM_TARGET="macOS"
    bash ./scripts/build-all.sh
  CMD

  s.dependency 'CocoaAsyncSocket', '~> 7.6.3'
  s.dependency 'CocoaLumberjack', '~> 3.0.0'

  s.ios.deployment_target = "9.0"
  s.ios.source_files = "CPAProxy/*.{h,m}", "CPAProxyDependencies-iOS/tor_cpaproxy.h"
  s.ios.private_header_files = "CPAProxyDependencies-iOS/tor_cpaproxy.h"
  s.ios.vendored_libraries  = "CPAProxyDependencies-iOS/*.a"
  s.ios.resource_bundles = {"CPAProxy" => ["CPAProxyDependencies-iOS/geoip", "CPAProxyDependencies-iOS/geoip6", "CPAProxyDependencies-iOS/torrc"]}
  s.ios.exclude_files = "CPAProxyDependencies-macOS/**"

  s.osx.deployment_target = "10.10"
  s.osx.source_files = "CPAProxy/*.{h,m}", "CPAProxyDependencies-macOS/tor_cpaproxy.h"
  s.osx.private_header_files = "CPAProxyDependencies-macOS/tor_cpaproxy.h"
  s.osx.vendored_libraries  = "CPAProxyDependencies-macOS/*.a"
  s.osx.resource_bundles = {"CPAProxy" => ["CPAProxyDependencies-macOS/geoip", "CPAProxyDependencies-macOS/geoip6", "CPAProxyDependencies-macOS/torrc"]}
  s.osx.exclude_files = "CPAProxyDependencies-iOS/**"

  s.libraries   = 'z'
  s.requires_arc = true
end
