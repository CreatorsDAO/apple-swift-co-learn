import SwiftUI
import AVFoundation

struct MusicPlayerView: View {
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var currentTime: TimeInterval = 0
    @State private var timer: Timer?
    @State private var volume: Float = 0.5  // 用于绑定 Slider 的音量值
    
    var body: some View {
        VStack {
            // 封面图片
            Image("demo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipped()
                .padding(.bottom, 50)
            
            // 播放/暂停按钮
            Button(action: {
                if isPlaying {
                    pauseAudio()
                } else {
                    playAudio()
                }
                isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                    .padding(.bottom, 30)
            }

            // 播放进度条
            if let duration = audioPlayer?.duration {
                VStack {
                    Slider(value: $currentTime, in: 0...duration, onEditingChanged: { editing in
                        if !editing {
                            audioPlayer?.currentTime = currentTime
                        }
                    })
                    .padding(.horizontal, 20)
                    
                    Text("\(formatTime(currentTime)) / \(formatTime(duration))")
                        .font(.subheadline)
                        .padding(.top, 10)
                }
            }

            // 音量调节滑块
            VStack {
                Text("Volume")
                Slider(value: $volume, in: 0...1, onEditingChanged: { _ in
                    audioPlayer?.volume = volume  // 通过 onEditingChanged 更新音量
                })
                .padding(.horizontal, 20)
            }
            .padding(.top, 20)
        }
        .onAppear {
            prepareAudio()
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
    
    // 准备音频
    func prepareAudio() {
        if let path = Bundle.main.path(forResource: "demo", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
                audioPlayer?.volume = volume // 设置初始音量
                startTimer()
            } catch {
                print("Error loading audio file: \(error)")
            }
        } else {
            print("Audio file not found")
        }
    }
    
    // 播放音频
    func playAudio() {
        audioPlayer?.play()
        startTimer()
    }
    
    // 暂停音频
    func pauseAudio() {
        audioPlayer?.pause()
        timer?.invalidate()
    }
    
    // 开始计时器来更新播放进度
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            if let player = audioPlayer {
                currentTime = player.currentTime
            }
        }
    }
    
    // 时间格式化函数
    func formatTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview {
    MusicPlayerView()
}
