# GoogleImitation

使用 SwiftUI 製作的 Google App 首頁介面仿作，重現搜尋首頁、快捷功能、資訊卡片與 Discover 新聞卡片等視覺元素。

> 本專案僅供 SwiftUI 學習與介面實作練習，與 Google LLC 沒有任何關聯。

## 功能

- Google 風格首頁與搜尋列
- AI 模式、語音及其他快捷功能按鈕
- 天氣、日出時間與自訂資訊卡片
- Google Discover 風格新聞卡片
- 新聞收藏狀態切換
- 使用系統分享介面分享新聞標題
- 淺色／深色模式切換
- 使用 `@AppStorage` 保存外觀偏好
- SF Symbols 圖示與 SwiftUI 動畫

## 使用技術

- Swift
- SwiftUI
- AppStorage
- ShareLink
- Asset Catalog
- SF Symbols

## 專案結構

```text
GoogleImitation/
├── Assets.xcassets/       # 圖片與色彩資源
├── ContentView.swift      # 首頁、搜尋區、資訊卡片與底部導覽
├── NewsCardView.swift     # Discover 新聞卡片
└── MyApp.swift            # App 進入點
```

## 執行方式

1. Clone repository：

   ```bash
   git clone https://github.com/yndjl-5/Google-page-imitation.git
   ```

2. 使用 Xcode 開啟 `GoogleImitation.xcodeproj`。
3. 選擇 iPhone Simulator 或實機。
4. 按下 Run，或使用快捷鍵 `Command + R`。

## 說明

目前畫面內容與新聞資料為靜態示範資料，搜尋列及部分圖示主要用於介面呈現，尚未串接 Google 搜尋或其他外部 API。

## 未來可擴充項目

- 串接即時搜尋建議
- 加入語音搜尋
- 串接天氣及新聞 API
- 完善頁面導覽與快捷功能
- 增加測試與無障礙支援

