import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                // 头像和用户名
                VStack(spacing: 10) {
                    // 头像
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.purple)
                        .overlay(
                            Rectangle()
                                .frame(height: 75)
                                .foregroundColor(.black)
                                .offset(y: 37.5)
                        )
                        .clipShape(Circle())
                    
                    // 用户名
                    Text("李晨啸 Race")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    // 描述文本
                    Text("详细信息在这里，详细信息在这里，详细信息在这里，详细信息在这里，详细信息在这里，详细信息在这里，详细信息在这里。")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                }
                .padding(.top, 30)
                
                // 工程项目
                VStack(alignment: .leading, spacing: 10) {
                    Text("工程")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ProjectGridView()
                }
                .padding(.horizontal)
                
                // 艺术项目
                VStack(alignment: .leading, spacing: 10) {
                    Text("艺术项目")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ProjectGridView()
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

// 项目视图
struct ProjectGridView: View {
    let projectNames = ["项目名称1", "项目名称2"]
    let projectDescriptions = [
        "详细信息在这里，详细信息在这里，详细信息在这里",
        "详细信息在这里，详细信息在这里，详细信息在这里"
    ]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
            ForEach(0..<projectNames.count, id: \.self) { index in
                VStack(alignment: .leading) {
                    // 项目图片
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 100)
                        .cornerRadius(10)
                    
                    // 项目名称
                    Text(projectNames[index])
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    // 项目描述
                    Text(projectDescriptions[index])
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ProfileView()
}
