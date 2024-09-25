import SwiftUI

struct StateBindingView: View {
    var body: some View {
        OuterView()
    }
}

struct OuterView: View {
    @State private var isSwitchOn = false
    // TODO: Nickname
    var body: some View {
        VStack(alignment: .leading) {
            Text("Outer View").font(.title2).bold()
            Text("Is Switch On: \(isSwitchOn)")
            InnerView(isSwitchOn: $isSwitchOn)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
        .padding()
    }
}

struct InnerView: View {
    @Binding var isSwitchOn: Bool
    // TODO: TextField
    var body: some View {
        VStack(alignment: .leading) {
            Text("Inner View").font(.title2).bold()
            Toggle(isOn: $isSwitchOn) {
                Text("Switvh")
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
    }
}


#Preview {
    StateBindingView()
}

#Preview {
    InnerView(isSwitchOn: .constant(true))
}
