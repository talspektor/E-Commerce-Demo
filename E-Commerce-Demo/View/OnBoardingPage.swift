//
//  OnBoardingPage.swift
//  E-Commerce-Demo
//
//  Created by Tal talspektor on 09/04/2022.
//

import SwiftUI
// To use the custom font on all pages...
let customFont = "Raleway-Regular"

struct OnBoardingPage: View {
    // Showing Login Page..
    @State var showLoginPage: Bool = false

    var body: some View {

        VStack(alignment: .leading) {
            Text("Find your\nGadget")
                .font(.custom(customFont, size: 55))
            // Since we added all three fonts in Info.plist
            // We can call all of those fonts with any names...
                .fontWeight(.regular)
                .foregroundColor(Color.white)

            Image("OnBoard")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Button {
                withAnimation {
                    showLoginPage = true
                }
            } label: {

                Text("Get started")
                    .font(.custom(customFont, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(Color.purple)
            }
            .padding(.horizontal, 30)
            // Adding Some Adjustments only for larger displays...
            .offset(y: getRect().height < 750 ? 20 : 40)

            Spacer()


        }
        .padding()
        .padding(.top, getRect().height < 750 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.purple
        )
        .overlay(

            Group {
                if showLoginPage {
                    LoginPage()
                        .transition(.move(edge: .bottom))
                }
            }
        )
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}

// Extending View to get Screen Bounds...
extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
