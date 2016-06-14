Pod::Spec.new do |s|
  s.name         = "CSNetManager"
  s.version      = "0.0.2"
  s.summary      = "The package of NetworkManager"
  s.homepage     = "https://github.com/lichangsong"
  s.license      = "MIT"
  s.authors      = { 'lichangsong' => 'lcs_lz@163.com'}
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/lichangsong/CSNetManager.git", :tag => s.version }
  s.source_files = 'CSNetManager', 'CSNetManager/**/*.swift'
  s.requires_arc = true
  s.dependency "Alamofire", "~> 3.0"
  s.dependency "SwiftyJSON", "~> 2.3.2"
  s.dependency "HanekeSwift", "~> 0.10.1"
  s.dependency "RealReachability", "~> 1.1.3"
end