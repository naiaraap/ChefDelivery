//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct CarouselTabView: View {
  
    let ordersMock: [OrderType] = [
      OrderType(id: 1, name: "", imageName: "barbecue-banner"),
      OrderType(id: 2, name: "", imageName: "brazilian-meal-banner"),
      OrderType(id: 3, name: "", imageName: "brazilian-meal-banner")
    ]
  
    var body: some View {
        TabView {
          ForEach(ordersMock) { mock in
            CarouselItemView(order: mock)
          }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
