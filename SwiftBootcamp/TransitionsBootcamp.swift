import SwiftUI

struct TransitionsBootcamp: View {

    @State private var showView = false

    var body: some View {

        GeometryReader { geometry in

            ZStack(alignment: .bottom) {

                Color.cyan
                    .ignoresSafeArea()

                VStack {

                    Button {
                        withAnimation(.easeInOut) {
                            showView.toggle()
                        }

                    } label: {

                        Circle()
                            .fill(.white)
                            .frame(width: 80, height: 80)
                            .shadow(radius: 10)
                            .overlay {

                                Image(
                                    systemName: showView
                                        ? "arrow.down"
                                        : "arrow.up"
                                )
                                .font(.title)
                                .foregroundStyle(.gray)

                                // Don't animate the arrow
                                .transaction { transaction in
                                    transaction.animation = nil
                                }
                            }
                    }
                    .padding(.top, 80)

                    Spacer()
                }

                // Only this view gets the transition animation
                if showView {

                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(height: geometry.size.height * 0.5)
                        .transition(.move(edge: .bottom))
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    TransitionsBootcamp()
}
