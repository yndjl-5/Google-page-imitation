
import SwiftUI

struct NewsCardView: View {

    @State private var isLiked = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            // 新聞圖片
            ZStack(alignment: .bottomTrailing) {

                Image("naiwa")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)

                Text("校園新聞")
                    .font(.system(size: 13))
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(8)
                    .padding(10)
            }
            .frame(height: 230)
            .clipped()

            // 新聞標題
            Text("10/30奶蛙台大遊行！")
                .font(.system(size: 24, weight: .bold))
                .padding(.horizontal, 16)

            // 新聞簡介
            Text("超人氣奶蛙即將現身台大！10月30日將在校園舉行遊行活動，邀請大家一起穿黃色雨衣來參加！")
                .font(.system(size: 16))
                .foregroundColor(.secondary)
                .padding(.horizontal, 16)

            // 底部工具列
            HStack(spacing: 20) {

                Image(systemName: "sparkles")
                    .foregroundColor(.blue)

                Text("台大校園新聞")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Spacer()

                // 愛心按鈕
                Button {
                    isLiked.toggle()
                } label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundColor(isLiked ? .red : .secondary)
                }
                .buttonStyle(.plain)

                // 分享按鈕
                ShareLink(item: "10/30奶蛙台大遊行！") {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.secondary)
                }

                Image(systemName: "ellipsis")
                    .foregroundColor(.secondary)
            }
            .font(.system(size: 20))
            .padding(.horizontal, 18)
            .padding(.vertical, 15)
        }
        .background(Color.primary.opacity(0.025))
        .cornerRadius(16)
        .padding(.bottom, 10)
    }
}

