//
//  ContentView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection: Tab = .home

    enum Tab {
        case home
        case diary
        case add
        case report
        case more
    }
    
    init() {
        setupTabBar()
    }

    var body: some View {
        TabView(selection: $selection) {
            Dashboard().tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Home")
            }
            DiaryView().tabItem {
                Image(systemName: "list.bullet")
                Text("Diary")
            }
            Dashboard().tabItem {
                Image(systemName: "plus.circle.fill")
                    .renderingMode(.template)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .tag("add")
            }
            ReportsView().tabItem {
                Image(systemName: "chart.bar")
                Text("Reports")
            }
            MoreView().tabItem {
                Image(systemName: "ellipsis.circle")
                Text("More")
            }
        }
        .accentColor(Color("PrimaryColor"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .preferredColorScheme(.light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
    }
}

// MARK: - Tabbar view appearance

extension TabBarView {
    func setupTabBar() {
        UITabBar.appearance().barTintColor = UIColor(Color("WhiteColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("WhiteColor"))
        UITabBar.appearance().tintColor = .red
        UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
        UITabBar.appearance().clipsToBounds = true
        UITabBar.appearance().isTranslucent = false
        
    }
}
