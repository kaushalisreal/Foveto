import SwiftUI

struct TrackView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Today") {
                    Text("No events yet")
                        .foregroundStyle(.secondary)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Track")
        }
    }
}

#Preview {
    TrackView()
}
