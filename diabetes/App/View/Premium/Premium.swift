//
//  Premium.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 28/07/2021.
//

import SwiftUI

struct Premium: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        setupNavBar()
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                VStack {
                    Image(systemName: "crown")
                        .font(.system(size: 73))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("YellowColor")/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 16.0)
                    Text("Become Premium Member")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20.0))
                    Spacer()
                        .frame(height: 4.0)
                    Text("Enjoy the benefits of becoming a premium member.")
                        .fontWeight(.regular)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("TextColor")/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 14.0))
                    Spacer()
                        .frame(height: 40.0)
                    FeatureItem()
                    FeatureItem()
                    FeatureItem()
                    FeatureItem()
                }
            }
            .navigationTitle("Premium")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Cancel",action: {close()}))
            .ignoresSafeArea()
        }
    }
}

struct Premium_Previews: PreviewProvider {
    static var previews: some View {
        Premium()
    }
}

extension Premium {
    func close() {
        presentationMode.wrappedValue.dismiss()
    }
}

extension Premium {
    func setupNavBar() {
        UINavigationBar.appearance().barTintColor = .clear
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().clipsToBounds = true
        UINavigationBar.appearance().isTranslucent = true
    }
}

struct FeatureItem: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "crown")
                .font(.system(size: 24))
            VStack(alignment: .leading) {
                Text("Export Logs")
                    .fontWeight(.regular)
                    .font(.system(size: 17.0))
                Spacer()
                    .frame(height: 4.0)
                Text("Export Logs")
                    .fontWeight(.regular)
                    .font(.system(size: 14.0))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("TextColor")/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.all, 16.0)
        .background(Color("WhiteColor"))
    }
}
