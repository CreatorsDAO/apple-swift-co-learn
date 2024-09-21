import SwiftUI

struct StateBindingDemoView: View {
    var body: some View {
        ParentView()
    }
}

struct ParentView: View {
    @State private var isSwitchOn = false

    var body: some View {
        VStack {
            HStack {
                Text("Parent View")
                Text("Is Switch On: \(isSwitchOn)")
            }
            ChildView(isSwitchOn: $isSwitchOn)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
        .padding()
    }
}

struct ChildView: View {
    @Binding var isSwitchOn: Bool

    var body: some View {
        VStack {
            Text("Child View")
            Toggle(isOn: $isSwitchOn) {
                Text("Switch")
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    StateBindingDemoView()
}

#Preview {
    ChildView(isSwitchOn: .constant(true))
}
