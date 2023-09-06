//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct StoreItemView: View {
  
    let order: StoreType
  
    var body: some View {
      HStack {
        Image(order.logoImage)
          .resizable()
          .scaledToFit()
          .cornerRadius(25)
          .frame(width: 50, height: 50)
        
        VStack {
          Text(order.name)
            .font(.subheadline)
        }
        Spacer()
      }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
      StoreItemView(order: storesMock[0])
        .previewLayout(.sizeThatFits)
    }
}
