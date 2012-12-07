Gem::Specification.new do |spec|
  spec.name     = 'rack-timeout'
  spec.summary  = 'Abort requests that are taking too long'
  spec.version  = '0.0.3'
  spec.homepage = 'http://github.com/kch/rack-timeout'
  spec.author   = 'Caio Chassot'
  spec.email    = 'dev@caiochassot.com'
  spec.files    = Dir[*%w( MIT-LICENSE README.markdown lib/**/* )]
  spec.add_dependency "terminator", ">= 0.4.4"
end
