//
//  ContentView.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/17/23.
//

import SwiftUI

struct SearchView: View {
    
    var userList: [Person]
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(named: "appBackground")
        var personsList: [Person] = []
        personsList.append(Person(image: "dummyUser1", name: "Brian Rahman", tags: ["Tech", "Edu"]))
        personsList.append(Person(image: "dummyUser2", name: "Jhonny Rio", tags: ["Edu", "Foods"]))
        personsList.append(Person(image: "dummyUser3", name: "Billy Gustaus", tags: ["Tech", "Foods"]))
        personsList.append(Person(image: "dummyUser4", name: "Ricart Rahman", tags: ["Tech", "Foods"]))
        userList = personsList
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchContainerView()
                HStack {
                    Text("Search by category")
                        .font(.custom("PlusJakartaSans-SemiBold", size: 16.0))
                        .foregroundColor(Color("categoryTitleColor"))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                }.padding([.leading], 28).padding([.top], 22)
                CategoryTileView()
                HStack {
                    Text("Last Visited")
                        .font(.custom("PlusJakartaSans-SemiBold", size: 16.0))
                        .foregroundColor(Color("categoryTitleColor"))
                        .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                }.padding([.leading], 28).padding([.top], 40)
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(userList) { user in
                        UserListItemView(person: user)
                    }
                }
                Spacer()
            }
            .background(Color("appBackground"))
            .navigationTitle(Text("Search")
                .font(.custom("PlusJakartaSans-SemiBold", size: 16.0))
                .foregroundColor(Color("categoryTitleColor")))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Image("backarrow")
                            .alignmentGuide(HorizontalAlignment.center, computeValue: { d in
                                d[HorizontalAlignment.center]
                            })
                    }
                    .frame(width: 40.0, height: 40.0)
                    .background(.white)
                    .cornerRadius(10.0)
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Image("sort")
                            .alignmentGuide(HorizontalAlignment.center, computeValue: { d in
                                d[HorizontalAlignment.center]
                            })
                    }
                    .frame(width: 40.0, height: 40.0)
                    .background(.white)
                    .cornerRadius(10.0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
