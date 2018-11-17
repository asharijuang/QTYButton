Pod::Spec.new do |s|
s.name         = "QTYButton"
s.version      = "0.1.0"
s.summary      = "simple quantity buttons, you can add number of quantity use + - buttons"
s.description  = <<-DESC
Add Quantity product by clicking + or -.
DESC
s.homepage     = "http://asharijuang.github.io"
s.license      = "MIT"
s.author       = "Ashari Juang"
s.source       = { :git => "https://github.com/asharijuang/qtybutton.git", :tag => "#{s.version}" }
s.platform      = :ios, "9.0"
s.source_files  = "QTYButtons/**/*.{swift}"
s.resource_bundles = {
    'QTYButtons' => ['QTYButtons/**/*.{xib,xcassets,imageset}']
}
s.ios.frameworks = ["UIKit", "Foundation"]
end
