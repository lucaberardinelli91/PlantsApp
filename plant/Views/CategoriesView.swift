//
//  CategoriesView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct CategoriesView: View {
    @State var selectedTab = tabs[0]
    @Namespace var animation
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    CategoryBtn(text: tab, selected: $selectedTab, animation: animation)
                }
            }
            .padding(.vertical, 24)
        }
    }
}

//struct CategoriesView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoriesView()
//    }
//}
