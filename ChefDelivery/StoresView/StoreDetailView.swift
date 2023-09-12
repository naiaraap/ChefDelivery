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
        VStack(alignment: .leading) {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()

            HStack {
                Text(store.name)
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                Image(store.logoImage)
            }

            .padding(.vertical, 8)
            .padding(.horizontal)

            HStack {
                Text(store.location)

                Spacer()

                ForEach(Array(1 ... store.stars), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal)

            Text("Produtos")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
        }
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView(store: storesMock[0])
    }
}
