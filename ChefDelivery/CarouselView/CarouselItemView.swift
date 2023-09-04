//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct CarouselItemView: View {
  
    let order: OrderType
  
    var body: some View {
      Image(order.imageName)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
      CarouselItemView(order: OrderType(id: 1, name: "", imageName: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
