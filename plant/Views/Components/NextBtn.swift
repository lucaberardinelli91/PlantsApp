//
//  NextBtn.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct NextBtn: View {
    var body: some View {
        HStack {
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold
                )
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(Color("primary"))
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(50)
    }
}

struct NextBtn_Previews: PreviewProvider {
    static var previews: some View {
        NextBtn()
    }
}
