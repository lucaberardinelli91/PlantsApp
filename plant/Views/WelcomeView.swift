//
//  WelcomeView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("plant1")
                .resizable()
                .ignoresSafeArea()
                .overlay(LinearGradient(colors: [Color.clear, Color.black.opacity(0.95)], startPoint: .topLeading, endPoint: .bottomLeading))
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("Make your")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                Text("Green house")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("Decorate your house to make \nit look greneer")
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(.vertical, 5)
                Spacer()
                HStack {
                    Spacer()
                    NextBtn()
                }
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
