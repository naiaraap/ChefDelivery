//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 05/09/23.
//

import SwiftUI

struct StoreDetailView: View {
  
    let store: StoreType
  
    var body: some View {
      Text(store.name)
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
      StoreDetailView(store: storesMock[0])
    }
}
