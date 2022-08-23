//
//  ReccomendPlantCardView.swift
//  plant
//
//  Created by Luca Berardinelli on 22/08/22.
//

import SwiftUI

struct ReccomendPlantCardView: View, Hashable {
    var title: String
    var price: Int
    var image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("primary"))
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("primary").opacity(0.5))
                }
                HStack {
                    Text("$\(price)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("secondary"))
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all, 8)
                        .background(Color("primary"))
                        .cornerRadius(30)
                        .onTapGesture {
                            
                        }
                }
            }
            .padding()
        }
        .frame(width: 200)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
    }
}

//struct ReccomendPlantCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReccomendPlantCardView()
//    }
//}
