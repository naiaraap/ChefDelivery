//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 04/09/23.
//

import SwiftUI

struct StoresContainerView: View {
  
    let title = "Lojas"
  
    var body: some View {
      VStack(alignment: .leading, spacing: 30) {
        Text(title)
          .font(.subheadline)
        
        VStack(alignment: .leading, spacing: 30) {
          ForEach(storesMock) { store in
            StoreItemView(order: store)
          }
        
        }
      }
      .padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
        .previewLayout(.sizeThatFits)
    }
}
