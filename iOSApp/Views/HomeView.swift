import SwiftUI
import FovetoCore

struct HomeView: View {
    @State private var energy: Double = 0.6
    @State private var dopamine: Double = 0.4
    @State private var focus: Double = 0.5

    var body: some View {
        NavigationStack {
            ZStack {
                Image("home-bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 24) {
                    GlassBackground {
                        VStack {
                            HStack {
                                StatView(title: "Energy", value: energy)
                                StatView(title: "Dopamine", value: dopamine)
                                StatView(title: "Focus", value: focus)
                            }
                        }
                    }
                    .animation(.easeInOut(duration: 0.3), value: energy)

                    GlassBackground {
                        HStack {
                            Button(action: {}) { Label("Log", systemImage: "plus") }
                            Spacer()
                            Button(action: {}) { Label("Focus", systemImage: "target") }
                            Spacer()
                            Button(action: {}) { Label("Ship", systemImage: "paperplane") }
                        }
                        .font(.headline)
                        .foregroundStyle(.white)
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Today")
        }
    }
}

struct StatView: View {
    var title: String
    var value: Double

    var body: some View {
        VStack {
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
            Text(Int(value * 100), format: .number)
                .font(.title2.bold())
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeView()
}
