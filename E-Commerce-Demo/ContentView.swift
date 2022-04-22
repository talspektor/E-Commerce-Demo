//
//  ContentView.swift
//  E-Commerce-Demo
//
//  Created by Tal talspektor on 09/04/2022.
//

import SwiftUI

struct ContentView: View {
    // Log Status..
    @AppStorage("log_Status") var log_Status: Bool = false
    var body: some View {
        Group {
            if log_Status {
                MainPage()
            }
            else {
                OnBoardingPage()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
