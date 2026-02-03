# 项目介绍
一刻达原本是一个微信小程序项目，为了实践flutter，用了半个月时间改造成了flutter APP版本。

### 1. 前端技术
- 框架 ：Flutter 3.0+
- 语言 ：Dart
- 状态管理 ：Provider
- 路由管理 ：GoRouter
- UI组件 ：自定义组件 + Material Design
- 网络请求 ： Dio
- 数据模型 ：Freezed 生成不可变数据类
- 图片加载 ：Cached Network Image

### 2. 架构设计
- MVVM架构 ：View（widgets）、ViewModel、Model
- 分层架构 ：
  - Domain（领域模型）：核心业务逻辑
  - Infrastructure（基础设施）：网络请求、数据存储
  - UI（界面）：用户交互界面
- 依赖注入 ：Provider

### 3. 项目结构
lib/
├── config/         # 配置文件
├── domain/         # 领域模型
├── infrastructure/ # 基础设施
├── ui/             # 用户界面
│   ├── address/    # 地址管理
│   ├── cart/       # 购物车
│   ├── goods_detail/ # 商品详情
│   ├── home/       # 首页
│   ├── layout/     # 布局
│   ├── login/      # 登录
│   ├── mall/       # 商城
│   ├── mime/       # 个人中心
│   ├── order/      # 订单管理
│   └── sub_category/ # 子分类
├── routing/        # 路由配置
└── utils/          # 工具类

# 项目依赖
- Flutter 3.13.9
- Dart 3.1.5
- GetX 4.6.5
- Dio 5.3.2
- Flutter Secure Storage 5.2.1
- Flutter Spinkit 5.1.0
- Flutter Svg 1.1.0
- Flutter Webview Plugin 0.4.19
- Flutter Webview Cookie Manager 0.1.0
- Flutter Webview Cookie Manager Webview Cookie Manager 0.1.0
- Flutter Webview Cookie Manager Webview Cookie Manager Webview Cookie Manager 0.1.0

# 运行项目
1. 运行项目：flutter run

# todo

1. 运用retrofit 生成数据模型
2. get_x 实现网络请求
3. 修剪资源
4. 添加国际化支持
5. flutter_screenutil 实现屏幕适配
6. 集成fluwx 实现微信登录 支付、分享