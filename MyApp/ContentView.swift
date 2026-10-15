
import SwiftUI

struct ContentView: View {

    // 記住使用者選擇的深色模式
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        VStack(spacing: 0) {

            ScrollView {
                VStack(spacing: 25) {

                    // MARK: - 頂部選單
                    HStack {
                        Image(systemName: "line.3.horizontal.decrease")
                            .font(.system(size: 28))

                        // 深色模式切換按鈕
                        Button {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isDarkMode.toggle()
                            }
                        } label: {
                            Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.primary)
                        }
                        .buttonStyle(.plain)
                        .padding(.leading, 15)

                        Spacer()

                        Image(systemName: "bell")
                            .font(.system(size: 26))
                    }
                    .padding(.horizontal, 28)
                    .padding(.top, 25)

                    // MARK: - Google Logo
                    HStack(spacing: 0) {
                        Text("G")
                            .foregroundColor(Color(red: 0.26, green: 0.52, blue: 0.96))
                        Text("o")
                            .foregroundColor(Color(red: 0.92, green: 0.26, blue: 0.21))
                        Text("o")
                            .foregroundColor(Color(red: 0.98, green: 0.74, blue: 0.05))
                        Text("g")
                            .foregroundColor(Color(red: 0.26, green: 0.52, blue: 0.96))
                        Text("l")
                            .foregroundColor(Color(red: 0.20, green: 0.66, blue: 0.33))
                        Text("e")
                            .foregroundColor(Color(red: 0.92, green: 0.26, blue: 0.21))
                    }
                    .font(.system(size: 58, weight: .medium))
                    .padding(.top, 35)

                    // MARK: - 搜尋框
                    HStack(spacing: 22) {
                        Text("搜尋")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)

                        Spacer()

                        Image(systemName: "mic.fill")
                            .font(.system(size: 26))

                        Image(systemName: "camera.viewfinder")
                            .font(.system(size: 27))
                    }
                    .padding(.horizontal, 25)
                    .frame(height: 75)
                    .background(Color.primary.opacity(0.06))
                    .clipShape(Capsule())
                    .padding(.horizontal, 16)

                    // MARK: - 快捷功能
                    HStack(spacing: 8) {

                        // AI 模式
                        HStack(spacing: 10) {
                            Image(systemName: "sparkle.magnifyingglass")
                                .font(.system(size: 25))

                            Text("AI 模式")
                                .font(.system(size: 19))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 65)
                        .background(Color.primary.opacity(0.06))
                        .clipShape(Capsule())

                        // 語音功能
                        Image(systemName: "waveform")
                            .font(.system(size: 25))
                            .frame(width: 85, height: 65)
                            .background(Color.primary.opacity(0.06))
                            .clipShape(Capsule())

                        // 香蕉圖示
                        Text("🍌")
                            .font(.system(size: 26))
                            .frame(width: 85, height: 65)
                            .background(Color.primary.opacity(0.06))
                            .clipShape(Capsule())
                    }
                    .padding(.horizontal, 16)

                    // MARK: - 資訊卡片
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {

                            InfoCard(
                                title: "臺北",
                                detail: "77° 🌙☁️"
                            )

                            InfoCard(
                                title: "明天日出",
                                detail: "5:52 AM"
                            )

                            InfoCard(
                                title: "自訂",
                                detail: "⚙️"
                            )
                        }
                        .padding(.horizontal, 16)
                    }
                    .padding(.top, 8)
                }
                
                // MARK: - Google Discover 新聞
                NewsCardView()
                    .padding(.top, 5)

            }

            // MARK: - 底部導覽列
            HStack {
                Image(systemName: "house.fill")
                    .foregroundColor(.blue)

                Spacer()

                Image(systemName: "square.on.square")
                    .foregroundColor(.primary)

                Spacer()

                Image(systemName: "person.crop.circle")
                    .foregroundColor(.primary)
            }
            .font(.system(size: 27))
            .padding(.horizontal, 65)
            .padding(.vertical, 20)
        }
        .background(Color.primary.opacity(0.001))
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}


// MARK: - 資訊卡片 View
struct InfoCard: View {

    var title: String
    var detail: String

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            Text(title)
                .font(.system(size: 18))

            Text(detail)
                .font(.system(size: 25, weight: .medium))
        }
        .frame(width: 155, height: 90, alignment: .leading)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.primary.opacity(0.25), lineWidth: 1)
        )
    }
}


// MARK: - Preview
#Preview {
    ContentView()
}
