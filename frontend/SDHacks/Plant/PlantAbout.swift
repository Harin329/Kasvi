//
//  PlantAbout.swift
//  SDHacks
//
//  Created by Victor Uemura on 2021-02-20.
//

import SwiftUI

struct PlantAbout: View {
    var body: some View {
        VStack {
            HStack {
                Text("Basil")
                    .font(.system(size: 26))
                    .foregroundColor(Color(hex: "3a3a3a"))
                Spacer()
            }.padding(.top, 30)
            .padding(.bottom, 1)
            HStack {
                Text("Dracaena trifasciata")
                    .font(.system(size: 16))
                    .foregroundColor(Color(hex: "3a3a3a"))
                Spacer()
            }.padding(.bottom, 2)
            Text("It is an evergreen perennial plant forming dense stands, spreading by way of its creeping rhizome, which is sometimes above ground, sometimes underground. Its stiff leaves grow vertically from a basal rosette.")
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "3a3a3a"))
                .padding(.bottom, 20)
            HStack {
                VStack {
                    HStack {
                        Text("Origin")
                            .bold()
                            .font(.system(size: 16))
                            .foregroundColor(Color(hex: "3a3a3a"))
                        Spacer()
                    }
                    HStack {
                        Text("West Africa")
                            .font(.system(size: 14))
                            .foregroundColor(Color(hex: "3a3a3a"))
                        Spacer()
                    }
                }
                VStack {
                    HStack {
                        Text("Bloom time")
                            .bold()
                            .font(.system(size: 16))
                            .foregroundColor(Color(hex: "3a3a3a"))
                        Spacer()
                    }
                    HStack {
                        Text("Spring")
                            .font(.system(size: 14))
                            .foregroundColor(Color(hex: "3a3a3a"))
                        Spacer()
                    }
                }
            }
        }.padding(.horizontal, 25)
    }
}

struct PlantAbout_Previews: PreviewProvider {
    static var previews: some View {
        PlantAbout()
    }
}