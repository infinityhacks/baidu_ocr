# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'baidu_ocr/version'

Gem::Specification.new do |spec|
  spec.name          = "baidu_ocr"
  spec.version       = BaiduOcr::VERSION
  spec.authors       = ["rudyboy"]
  spec.email         = ["useyes91@gmail.com"]

  spec.summary       = %q{add rspec and base image for ocr.}
  spec.description   = %q{百度OCR文字识别API For Ruby Gems
http://apistore.baidu.com/apiworks/servicedetail/146.html}
  spec.homepage      = "https://github.com/rudyboy/baidu_ocr.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "rest-client", "~> 1.7"
  spec.add_runtime_dependency "json", "~> 1.8"
end