Pod::Spec.new do |s|
  s.name             = "buffer-objc-kit"
  s.version          = "0.0.1"
  s.summary          = "Block based Objective C wrapper for the Buffer API."
  s.homepage         = "https://github.com/bufferapp/buffer-objc-kit"
  s.license          = 'MIT'
  s.author           = { "Andrew Yates" => "andy@bufferapp.com" }
  s.social_media_url = "http://twitter.com/Ay8s"
  s.source           = { :git => "https://github.com/bufferapp/buffer-objc-kit.git", :commit => "67cf5d39e56f5d77e4f9c542a3c92c1428ed7069" }
  s.source_files     = 'Classes', 'BufferKit/**/*.{h,m}'
  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.8"
  s.dependency       'AFNetworking'
end
