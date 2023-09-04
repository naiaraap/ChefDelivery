//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Naiara de Almeida Pantuza on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: 20) {
            NavigationBar()
            .padding(.horizontal, 15)
          
          ScrollView(.vertical, showsIndicators: false) {
            VStack {
              OrderTypeGridView()
              CarouselTabView()
              StoresContainerView()
            }
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
