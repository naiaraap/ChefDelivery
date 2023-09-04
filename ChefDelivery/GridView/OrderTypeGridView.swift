//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 01/09/23.
//

import SwiftUI

struct OrderTypeGridView: View {
  
  var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
  }
  
    var body: some View {
      LazyHGrid(rows: [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
      ]) {
        ForEach(ordersMock) { orderItem in
          OrderTypeView(orderType: orderItem)
        }
      }
      .frame(height: 200)
      .padding(.horizontal, 15)
      .padding(.top, 15)
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
        .previewLayout(.sizeThatFits)
    }
}
