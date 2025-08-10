import SwiftUI

struct ReflectView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    GlassBackground {
                        VStack(alignment: .leading) {
                            Text("Top Drains")
                                .font(.headline)
                            Text("No data yet")
                                .foregroundStyle(.secondary)
                        }
                    }
                    GlassBackground {
                        VStack(alignment: .leading) {
                            Text("Top Gains")
                                .font(.headline)
                            Text("No data yet")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Reflect")
        }
    }
}

#Preview {
    ReflectView()
}
