//
//  HeaderView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("primary"))
            Spacer()
            Image("profile")
                .resizable()
                .frame(width: 65, height: 65)
                .cornerRadius(40)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
