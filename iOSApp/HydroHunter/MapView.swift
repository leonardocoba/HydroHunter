import SwiftUI

struct MapView: View {
    var body: some View {
        ZStack(alignment: .top) {
            // Your map or other content goes here.
            // For example, a Color or Map view that fills the screen:
            Color.gray.edgesIgnoringSafeArea(.all)

            VStack {
                HStack(spacing: 12) {
                    Text("Hydro Hunter")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.blue) // Make sure this color is defined in your assets or use a standard color.

                    Spacer(minLength: 0)

                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .padding(10)
                            .background(Color.black.opacity(0.1))
                            .clipShape(Circle())
                    }

                    Button(action: {}) {
                        Image(systemName: "person.fill") // Corrected systemName for person icon
                            .foregroundColor(.black)
                            .padding(10)
                            .background(Color.black.opacity(0.1))
                            .clipShape(Circle())
                    }
                }
                .padding()
                .background(Color.white) // Match this color to your app's nav bar color
                .shadow(radius: 2) // Optional: Adds a shadow for a lifted effect

                Spacer() // This will push the header to the top
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
