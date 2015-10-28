# libWeChatSDK

Mirror for Cocoapods

官方下载地址：
[`https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=open1419319164&lang=zh_CN`](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=open1419319164&lang=zh_CN)

# 1.6

**重要!**

SDK1.6

1. iOS 9 系统策略更新，限制了 http 协议的访问，此外应用需要在 `Info.plist` 中将要使用的 URL Schemes 列为白名单，才可正常检查其他应用是否安装。
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
    
    或者配置白名单域名 pingma.qq.com

2. 开发者需要在工程中链接上 `CoreTelephony.framework`
3. 解决 bitcode 编译不过问题

# 1.5

SDK1.5

1. 废弃 `safeSendReq:` 接口，使用 `sendReq:` 即可。
2. 新增 `+(BOOL) sendAuthReq:(SendAuthReq*) req viewController : (UIViewController*) viewController delegate:(id<WXApiDelegate>) delegate;`
支持未安装微信情况下Auth,具体见 `WXApi.h` 接口描述
3. 微信开放平台新增了微信模块用户统计功能，便于开发者统计微信功能模块的用户使用和活跃情况。开发者需要在工程中链接上: `SystemConfiguration.framework`, `libz.dylib`, `libsqlite3.0.dylib`。
