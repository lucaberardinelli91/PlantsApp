//
//  CategoryBtn.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct CategoryBtn: View {
    var text: String
    @Binding var selected: String
    var animation: Namespace.ID
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                selected = text
            }
        } label: {
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(selected == text ?.white : .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack {
                    if (selected == text) {
                        Color("primary")
                            .cornerRadius(12)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                })
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
        }
    }
}

//struct CategoryBtn_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryBtn(text: "All")
//    }
//}
