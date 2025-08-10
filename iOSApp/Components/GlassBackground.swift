import SwiftUI

struct GlassBackground<Content: View>: View {
    var blurStyle: Material = .ultraThin
    @ViewBuilder var content: Content

    var body: some View {
        content
            .padding()
            .background(blurStyle, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .stroke(Color.white.opacity(0.3), lineWidth: 1)
            )
    }
}
