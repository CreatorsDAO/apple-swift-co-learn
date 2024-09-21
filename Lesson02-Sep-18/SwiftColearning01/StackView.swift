import SwiftUI

struct StackView: View {
    var body: some View {
        ScrollView {
            
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipped()
                .cornerRadius(20)
            
            
            Image(systemName: "moon.dust.fill")
                .font(.system(size: 200, weight: .ultraLight))
            
            Text("hello World")
                .foregroundColor(.mint)
                .font(.system(size: 40, weight: .heavy))
                .padding()
                .background(Color.black)
                .cornerRadius(12)
                .padding()
                .background(Color.red)
                .cornerRadius(20)
            
            Text("Hi, my name is Race")
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
            
            Text("Placeholder")
            
            VStack(spacing: 30) {
                // MARK: - VStack 示例
                VStack {
                    Text("VStack Example")
                        .font(.headline)
                        .padding()
                    VStack(spacing: 10) {
                        Text("Item 1")
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                        Text("Item 2")
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                        Text("Item 3")
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)

                // MARK: - HStack 示例
                VStack {
                    Text("HStack Example")
                        .font(.headline)
                        .padding()
                    HStack(spacing: 10) {
                        Text("Item 1")
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        Text("Item 2")
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                        Text("Item 3")
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)

                // MARK: - ZStack 示例
                VStack {
                    Text("ZStack Example")
                        .font(.headline)
                        .padding()
                    ZStack {
                        Color.blue
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                        Text("Bottom Layer")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        VStack {
                            Spacer()
                            Text("Top Layer")
                                .font(.headline)
                                .foregroundColor(.yellow)
                                .padding(.bottom, 10)
                        }
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)

                // MARK: - Mixed Stacks 示例
                VStack {
                    Text("Mixed Stacks Example")
                        .font(.headline)
                        .padding()
                    HStack(spacing: 20) {
                        VStack {
                            Text("Top-Left")
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                            Text("Bottom-Left")
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                        
                        VStack {
                            Text("Top-Right")
                                .padding()
                                .background(Color.green)
                                .cornerRadius(10)
                            Text("Bottom-Right")
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                
                // MARK: - Alignment 示例
                VStack {
                    Text("Alignment Example")
                        .font(.headline)
                        .padding()
                    HStack(alignment: .bottom) {
                        Text("Item 1")
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                        Text("Item 2")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                        Text("Item 3")
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
            }
            .padding()
        }
        .navigationTitle("Stack Examples")
    }
}

#Preview {
    StackView()
}
