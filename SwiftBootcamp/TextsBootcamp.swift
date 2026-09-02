import SwiftUI

struct TextsBootcamp: View {
    var body: some View {
        Text("Hello, World!, I am Abdullah. I am 18 years old, currently studing doing my becholors in artificial Intelligence at UET Lahore.".capitalized)
            .padding()
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .italic()
//            .strikethrough(pattern: .dashDotDot, color: .red)
//            .underline(pattern: .dashDot, color: .green)
            .font(.system(size: 16, weight: .semibold, design: .rounded )) // With this we can add explicit font sizes helps in customization but size is constant it will not update with system settings.
            .multilineTextAlignment(.leading) // This help us align the text according in center start etc..
            .baselineOffset(10.0) // Line spacing in each line.
            .kerning(1) // Spacing between each letter.
            .foregroundStyle(.teal)
            .frame(width: 300,height: 150, alignment: .center ) // We use to set the height and width of text container and adjust the text placement inside container with alignment
            .minimumScaleFactor(0.6) // Adjust the font to try to fit inside the box constraints 0.6 means 60 percent of the font.
    }
}

#Preview {
    TextsBootcamp()
}
