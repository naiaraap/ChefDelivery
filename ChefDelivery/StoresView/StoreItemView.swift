//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct StoreItemView: View {
  
    let order: OrderType
  
    var body: some View {
      HStack {
        Image(order.imageName)
          .resizable()
          .scaledToFit()
          .cornerRadius(25)
          .frame(width: 50, height: 50)
        
        VStack {
          Text(order.name)
            .font(.subheadline)
        }
      }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
      StoreItemView(order: OrderType(id: 1, name: "monstro-burger-logo", imageName: "monstro-burger-logo"))
        .previewLayout(.sizeThatFits)
    }
}
