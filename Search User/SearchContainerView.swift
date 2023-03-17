//
//  SearchContainerView.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/17/23.
//

import SwiftUI

struct SearchContainerView: View {
    
    @State private var textInput: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image("searchIcon")
                    .padding(21)
                TextField("Type here", text: $textInput)
                    .frame(minWidth: 0.0, maxWidth: .infinity)
            }
            .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: .infinity)
            .background(.white)
            .cornerRadius(8.0)
        }
        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: 65.0)
        .padding([.leading, .trailing, .top], 25)
        .background(.clear)
    }
}

struct SearchContainerView_Previews: PreviewProvider {
    static var previews: some View {
        SearchContainerView()
    }
}
