//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct OrderTypeView: View {
  
    let orderType: OrderType
  
    var body: some View {
      VStack(spacing: 5) {
        Image(orderType.imageName)
          .resizable()
          .scaledToFit()
          .fixedSize(horizontal: false, vertical: true)
        Text(orderType.name)
          .font(.system(size: 10))
      }
      .frame(width: 70, height: 100)
    }
}

struct OrderTypeView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", imageName: "hamburguer"))
      
        .previewLayout(.sizeThatFits)
    }
}
