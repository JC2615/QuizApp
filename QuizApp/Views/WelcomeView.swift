//
//  WelcomeView.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/25/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.sRGB, red: 0.7, green: 0.7, blue: 0.5, opacity: 0.2)
                    .ignoresSafeArea()
                VStack {
                    Text("Quiz Time!")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.red)
                    Text("Select the correct answer to each of the following questions.")
                        .font(.title2)
                        .padding()
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomText(str: "Let's Go")
                                .padding()
                        })
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
