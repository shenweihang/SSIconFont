
Pod::Spec.new do |s|
  s.name             = 'SSIconFont'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SSIconFont.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/shenweihang/SSIconFont'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shenweihang' => '809827782@qq.com' }
  s.source           = { :git => 'https://github.com/shenweihang/SSIconFont.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SSIconFont/Classes/*.{h,m}'
end
