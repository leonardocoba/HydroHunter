import SwiftUI



struct ContentView: View {

    @State private var username: String = ""

    @State private var password: String = ""



    var body: some View {

        NavigationView {

            VStack {

                

                Text("Hydro Hunters")

                    .font(.custom("Verdana-Bold", size: 32))

                    .padding(.horizontal, 20)

                

                Spacer().frame(height: 63) // Add 63 pixels of space between the text field and the button



                TextField("Username", text: $username)

                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    .padding(.horizontal, 20)

                

                Spacer().frame(height: 25)

                

                SecureField("Password", text: $password)

                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    .padding(.horizontal, 20)

                    .padding(.top, 10)

                

                Spacer().frame(height:25)

                

                Button(action: {

                    // Handle login action

                }) {

                    Text("Login")

                        .foregroundColor(.white)

                        .frame(minWidth: 0, maxWidth: .infinity)

                        .frame(height: 50)

                        .background(Color.blue)

                        .cornerRadius(25)

                        .padding(.horizontal, 20)

                        .padding(.top, 30)

                        .font(.custom("Verdana-Regular", size: 16))

                }

                

                Spacer().frame(height: 10)

                Text("Don't have an account yet?")

                    .font(.custom("Verdana", size: 14))

                    .padding(.horizontal, 20)

                

                Spacer().frame(height:2)

                

                

                //When we import the SignUpView, we can make this a navigation link :)

               // NavigationLink(destination: SignUpView()) {

                    Text("Sign up")

                        .font(.custom("Verdana", size: 14))

                }

                

                Spacer() // Pushes all the content to the top

            

            

        }

    }

}



struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}
