import SwiftUI
import CoreMotion

//struct AccelerometerView: View {
//    @StateObject private var motionManager = MotionManager()
//    
//    var body: some View {
//        VStack {
//            Text("加速度计")
//                .font(.largeTitle)
//                .padding()
//            
//            Text("X: \(motionManager.acceleration.x, specifier: "%.2f")")
//            Text("Y: \(motionManager.acceleration.y, specifier: "%.2f")")
//            Text("Z: \(motionManager.acceleration.z, specifier: "%.2f")")
//        }
//        .padding()
//    }
//}
//
//class MotionManager: ObservableObject {
//    private let motionManager = CMMotionManager()
//    @Published var acceleration: CMAcceleration = CMAcceleration(x: 0, y: 0, z: 0)
//    
//    override init() {
//        super.init()
//        motionManager.accelerometerUpdateInterval = 0.1
//        
//        motionManager.startAccelerometerUpdates(to: .main) { data, error in
//            if let data = data {
//                DispatchQueue.main.async {
//                    self.acceleration = data.acceleration
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    AccelerometerView()
//}
