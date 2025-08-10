import SwiftUI

struct GuideView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ActionCard(title: "3‑min breath", subtitle: "+3 ES • 3 min", icon: "wind")
                    ActionCard(title: "Mute Discord", subtitle: "Patch distraction", icon: "bell.slash")
                    ActionCard(title: "Write 3 hooks", subtitle: "Ship in 5 min", icon: "pencil.and.outline")
                }
                .padding()
            }
            .navigationTitle("Guide")
        }
    }
}

struct ActionCard: View {
    var title: String
    var subtitle: String
    var icon: String

    var body: some View {
        GlassBackground {
            HStack {
                Image(systemName: icon)
                    .font(.title2)
                    .frame(width: 32)
                VStack(alignment: .leading) {
                    Text(title).font(.headline)
                    Text(subtitle).font(.caption).foregroundStyle(.secondary)
                }
                Spacer()
                Button("Do") {}
                    .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    GuideView()
}
