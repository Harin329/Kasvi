//
//  HeaderBar.swift
//  SDHacks
//
//  Created by Victor Uemura on 2021-02-20.
//

import SwiftUI

struct DashboardHead: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("Welcome to:")
                        .font(.system(size: 20))
                    Spacer()
                }
                HStack {
                    DropDown()
                    Spacer()
                }
                Spacer()
            }.padding(.leading, 25)
            Spacer()
            VStack {
                HStack{
                    Button(action: {}) {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.padding(.trailing, 5)
                    Button(action: {}) {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }.padding(.trailing, 25)
                Spacer()
            }
        }
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        DashboardHead()
    }
}
