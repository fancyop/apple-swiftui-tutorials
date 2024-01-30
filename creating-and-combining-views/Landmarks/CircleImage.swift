import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("LeifengPagoda")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(color: .green, radius: 7)
    }
}

#Preview {
    CircleImage()
}
