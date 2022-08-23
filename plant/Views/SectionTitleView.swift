//
//  SectionTitleView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("primary"))
            Spacer()
            Text("See all")
                .fontWeight(.medium)
                .foregroundColor(Color("primary").opacity(0.7))
        }
    }
}

//struct SectionTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionTitleView()
//    }
//}
