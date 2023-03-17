//
//  CategoryTileView.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/18/23.
//

import SwiftUI

struct CategoryTileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 17) {
                    Text("Lifestyle & Travel")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                    Text("Technology")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                }
                HStack(spacing: 17) {
                    Text("Health & Fitness")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                    Text("Education")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                }
                HStack(spacing: 17) {
                    Text("Beauty & Fashion")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                    Text("Foods")
                        .padding(.horizontal, 27).padding(.vertical, 16)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: .none)
        .padding([.all], 10)
    }
}

struct CategoryTileView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTileView()
    }
}
