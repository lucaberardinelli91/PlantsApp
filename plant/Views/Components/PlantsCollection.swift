//
//  PlantsCollection.swift
//  plant
//
//  Created by Luca Berardinelli on 23/08/22.
//

import SwiftUI

struct PlantsCollection: View {
    
    var plants: [ReccomendPlantCardView]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(plants, id: \.self) { plant in
                    ReccomendPlantCardView(title: plant.title, price: plant.price, image: plant.image)
                }
            }
            .padding()
        }
    }
}

//struct PlantsCollection_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantsCollection()
//    }
//}
