# DemoApp

一个多页面的 Android Demo 应用项目，适合用于学习 Android 开发、测试多页面跳转、CI/CD 自动化演示，或作为新项目的模板。

## 功能特性

- **多页面演示**：
  - 主页面（MainActivity）：显示“Hello, Android!”并有按钮跳转到第二页面。
  - 第二页面（SecondActivity）：显示“Hello, Second Page!”并有按钮跳转到第三页面。
  - 第三页面（ThirdActivity）：显示“Hello, Third Page!”。
- **Material 主题与夜间模式**：支持现代化 UI 和夜间模式切换。
- **自动化构建**：集成 GitHub Actions，支持 push、pull request 和手动触发自动构建。
- **Gradle Wrapper**：无需本地预装 Gradle，云端和本地均可一键构建。

## 技术栈

- Kotlin（可扩展为 Java/Kotlin 混合）
- AndroidX、Material Design
- Gradle 构建系统
- GitHub Actions 持续集成

## 目录结构（核心部分）

```
.
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/
│       └── main/
│           ├── AndroidManifest.xml
│           ├── java/com/example/demoapp/
│           │   ├── MainActivity.kt
│           │   ├── SecondActivity.kt
│           │   └── ThirdActivity.kt
│           └── res/
│               ├── layout/
│               │   ├── activity_main.xml
│               │   ├── activity_second.xml
│               │   └── activity_third.xml
│               ├── values/
│               │   ├── strings.xml
│               │   ├── colors.xml
│               │   └── themes.xml
│               └── mipmap-anydpi-v26/
│                   ├── ic_launcher.xml
│                   └── ic_launcher_round.xml
├── build.gradle
├── gradle/
│   └── wrapper/
│       ├── gradle-wrapper.properties
│       └── gradle-wrapper.jar（需手动补充）
├── gradlew
├── gradlew.bat
├── settings.gradle
└── .github/
    └── workflows/
        └── android.yml
```

## 使用说明

1. **上传到 GitHub**：推送到 main 分支、发起 PR 或在 Actions 页面手动触发 workflow，均可自动构建项目。
2. **本地构建**：需补充 `gradle/wrapper/gradle-wrapper.jar` 文件，并安装 JDK 17 及 Android SDK。
3. **页面跳转演示**：
   - 启动应用后，主页面有按钮跳转到第二页面，第二页面有按钮跳转到第三页面。

## License

本项目采用 Apache 2.0 License。 