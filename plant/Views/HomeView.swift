//
//  HomeView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

var tabs = ["All", "Indoor", "Outdoor", "Garden"]

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("bgcolor")
                .ignoresSafeArea()
            VStack {
                Spacer()
                HeaderView()
                CategoriesView()
                SectionTitleView(title: "Recommended")
                
                PlantsCollection(plants: HomeView.getPlants1())
                    .frame(height: 300)
                PlantsCollection(plants: HomeView.getPlants2())
                    .frame(height: 300)
                
                Spacer()
            }
            .padding()
        }
    }
    
    static func getPlants1() -> [ReccomendPlantCardView] {
        return [ReccomendPlantCardView(title: "Oscar plant", price: 150, image: "plant5"),
                ReccomendPlantCardView(title: "Twiny plant", price: 170, image: "plant6"),
                ReccomendPlantCardView(title: "Home plant", price: 130, image: "plant4")]
    }
    
    static func getPlants2() -> [ReccomendPlantCardView] {
        return [ReccomendPlantCardView(title: "Home plant", price: 130, image: "plant4"),
                ReccomendPlantCardView(title: "Oscar plant", price: 150, image: "plant5"),
                ReccomendPlantCardView(title: "Twiny plant", price: 170, image: "plant6")]
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
