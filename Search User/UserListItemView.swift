//
//  UserListItemView.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/18/23.
//

import SwiftUI

struct UserListItemView: View {
    var person: Person
    var body: some View {
        HStack {
            HStack {
                Image("\(person.image)")
                    .resizable()
                    .frame(width: 48.0, height: 48.0)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 7.0) {
                    Text("\(person.name)")
                    HStack {
                        ForEach (person.tags, id: \.self) { tag in
                            Text("\(tag)")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 10.0))
                                .foregroundColor(Color("userTagChipBgColor"))
                                .cornerRadius(5)
                                .padding(.vertical, 2.0)
                                .padding(.horizontal, 10.0)
                                .background(Color("userTagChipBg"))
                        }
                    }
                    .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
                }
                .padding([.horizontal], 12.0)
                Button {
                } label: {
                    Image("userDetailsIcon")
                }
            }
        }
        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: 50.0)
        .padding([.leading, .trailing, .top], 24)
        .background(.clear)
    }
}

struct UserListItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserListItemView(person: Person())
    }
}
