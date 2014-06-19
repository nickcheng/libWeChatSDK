Pod::Spec.new do |s|

  s.name = "libWeChatSDK"
  s.version = "1.4.2.1"
  s.license = {
    :type => "Copyright",
    :text => "      Copyright (c) 2012 Tencent. All rights reserved.\n"
  }
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.homepage = "https://open.weixin.qq.com/"
  s.authors = {
    "Tencent" => "weixinapp@qq.com"
  }
  s.source = {
    :http => "https://open.weixin.qq.com/zh_CN/htmledition/res/dev/download/sdk/WeChatSDK_iOS_1.4.2.1.zip"
  }
  s.platform = :ios
  s.source_files = "*.h"
  s.public_header_files = "*.h"
  s.preserve_paths = "libWeChatSDK.a"
  s.xcconfig = {
    "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/libWeChatSDK\""
  }
  s.requires_arc = false

end