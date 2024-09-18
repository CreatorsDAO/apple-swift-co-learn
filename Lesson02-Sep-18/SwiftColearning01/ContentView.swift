import SwiftUI

struct ContentView: View {
    // 状态变量
    @State private var textFieldInput = ""
    @State private var toggleOn = false
    @State private var sliderValue: Double = 0.5
    @State private var selectedPickerValue = 0
    @State private var listItems = ["Swift", "SwiftUI", "Xcode", "iOS"]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                // Text
                Text("这是一个 Text 组件")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)

                // Image
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.orange)
                
                // Button
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("点击按钮")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // TextField
                TextField("请输入文本", text: $textFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .border(Color.gray, width: 1)
                Text("你输入的是: \(textFieldInput)")

                // Toggle
                Toggle(isOn: $toggleOn) {
                    Text("Toggle 开关")
                }
                .padding()

                if toggleOn {
                    Text("Toggle 已开启")
                        .foregroundColor(.green)
                } else {
                    Text("Toggle 已关闭")
                        .foregroundColor(.red)
                }

                // Slider
                Slider(value: $sliderValue, in: 0...1)
                    .padding()
                Text("Slider 当前值: \(sliderValue, specifier: "%.2f")")
                    .padding()

                // Picker
                Picker("选择一个语言", selection: $selectedPickerValue) {
                    Text("Swift").tag(0)
                    Text("SwiftUI").tag(1)
                    Text("Objective-C").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                Text("你选择的是: \(selectedPickerValue == 0 ? "Swift" : selectedPickerValue == 1 ? "SwiftUI" : "Objective-C")")

                // List
                List {
                    ForEach(listItems, id: \.self) { item in
                        Text(item)
                    }
                }
                .frame(height: 200)
                .border(Color.gray, width: 1)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
