import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            TrackView()
                .tabItem { Label("Track", systemImage: "timer") }
            ReflectView()
                .tabItem { Label("Reflect", systemImage: "chart.bar.xaxis") }
            GuideView()
                .tabItem { Label("Guide", systemImage: "lightbulb") }
            ShipView()
                .tabItem { Label("Ship", systemImage: "paperplane") }
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
