# aries-player
This repository is take-home assignment for ariesssyyyang

實作一個App「aries-player」，開啟App後進入首頁
- 使用iTunes提供的API取得資訊
- 需使用一個 APIManager 封裝 APIRequest，APIManager使用Singleton Pattern
- 採用MVC架構
- 不限制CocoaPod使用

## 首頁
![aries-home](https://user-images.githubusercontent.com/8430276/36578343-830d4482-1897-11e8-8b4f-ae94dc9487a8.png)

### [最新發行]
- 最新發行採用橫向捲軸式`UICollectionView`，顯示10筆資料
- 每一個UICollectionViewCell需加上陰影`offset(0, 1) radius(3) color(lightGray)`
- 點擊UICollectionViewCell開啟播放頁面播放試聽

### [熱門歌曲]
- 熱門歌曲採用橫向捲軸式`UICollectionView`，顯示10筆資料
- 每一個UICollectionViewCell需加上陰影`offset(0, 1) radius(3) color(lightGray)`
- 點擊UICollectionViewCell開啟播放頁面播放試聽

### [排行榜]
- 最新發行採用`UITableView`，顯示10筆資料
- 點擊UITableViewCell開啟播放頁面播放試聽

## 播放頁
![aries-player](https://user-images.githubusercontent.com/8430276/36578706-e82e8216-1899-11e8-9b5c-82be1d19592f.png)
- 進入播放頁開始自動播放
- 時間軸顯示播放進度，左邊數字為已播放秒數，右邊數字為剩下的秒數
- 開始播放後播放按鈕顯示圖片為暫停圖示 `||`
- 點擊back回到上一頁，播放停止

## API
取得最新發行
```
https://rss.itunes.apple.com/api/v1/tw/itunes-music/recent-releases/all/10/explicit.json
```

取得熱門歌曲
```
https://rss.itunes.apple.com/api/v1/tw/itunes-music/hot-tracks/all/10/explicit.json
```

取得排行榜
```
https://rss.itunes.apple.com/api/v1/tw/itunes-music/top-albums/all/10/explicit.json
```

取得歌曲資訊
```
https://itunes.apple.com/lookup?id=${iTunesID}
```

**[Reference]**
- [iTunes RSS Generator](https://rss.itunes.apple.com/en-us)
- [iTunes Search API](https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/#searching)

