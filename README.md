# libWeChatSDK

Mirror for CocoaPods

官方下载地址：
[`https://res.wx.qq.com/open/zh_CN/htmledition/res/dev/download/sdk/WeChatSDK1.7.5.zip`](https://res.wx.qq.com/open/zh_CN/htmledition/res/dev/download/sdk/WeChatSDK1.7.5.zip)

# SDK 1.7.5

1. 提高稳定性
2. 加快 `registerApp` 接口启动速度

# SDK 1.7.4

1. 更新支持 iOS 启用 ATS(App Transport Security)
2. 需要在工程中链接 `CFNetwork.framework`
3. 在工程配置中的 `Other Linker Flags` 中加入 `-Objc -all_load`

# SDK 1.7.3

1. 增强稳定性，适配 iOS10
2. 修复小于 32K 的 jpg 格式缩略图设置失败的问题

# SDK 1.7.2

1. 修复因 `CTTeleponyNetworkInfo` 引起的崩溃问题

# SDK 1.7.1

1. 支持兼容 ipv6 (提升稳定性)
2. xCode Version 7.3.1 (7D1014) 编译

# SDK 1.7

1. 支持兼容 ipv6
2. 修复若干问题增强稳定性

# SDK 1.6.2

1. Xcode 7.1 构建的 SDK 包
2. 请使用 Xcode 7.1 进行编译

# SDK 1.6.1

1. 修复 armv7s 下, bitcode 可能编译不过
2. 解决 warning

# SDK 1.6

1. iOS 9 系统策略更新，限制了 HTTP 协议的访问，此外应用需要在 `Info.plist` 中将要使用的 URL Schemes 列为白名单，才可正常检查其他应用是否安装。
受此影响，当你的应用在 iOS 9 中需要使用微信 SDK 的相关能力（分享、收藏、支付、登录等）时，需要在 `Info.plist` 里增加如下代码：

    ```xml
    <key>LSApplicationQueriesSchemes</key>
    <array>
        <string>weixin</string>
    </array>
    
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
    ```
    
    或者配置白名单域名 `pingma.qq.com`

2. 开发者需要在工程中链接上 `CoreTelephony.framework`
3. 解决 bitcode 编译不过问题

# SDK 1.5

1. 废弃 `safeSendReq:` 接口，使用 `sendReq:` 即可。
2. 新增 `+(BOOL) sendAuthReq:(SendAuthReq*) req viewController : (UIViewController*) viewController delegate:(id<WXApiDelegate>) delegate;`
支持未安装微信情况下Auth,具体见 `WXApi.h` 接口描述
3. 微信开放平台新增了微信模块用户统计功能，便于开发者统计微信功能模块的用户使用和活跃情况。开发者需要在工程中链接上: `SystemConfiguration.framework`, `libz.dylib`, `libsqlite3.0.dylib`。
