//
//  TestView.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/17/23.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack(alignment: .top) {
                    NavigationView {
                        Text("Content goes here")
                            .navigationTitle("Title")
                    }
                    VStack {
                        Text("Custom view")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
