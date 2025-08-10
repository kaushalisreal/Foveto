import SwiftUI

struct ShipView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                GlassBackground {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Create a tiny release")
                            .font(.headline)
                        Button("Attach Artifact") {}
                            .buttonStyle(.bordered)
                        Button("Ship Now") {}
                            .buttonStyle(.borderedProminent)
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Ship")
        }
    }
}

#Preview {
    ShipView()
}
