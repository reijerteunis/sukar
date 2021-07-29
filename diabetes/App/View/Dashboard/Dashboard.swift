//
//  DashboardView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct Dashboard: View {
    
    var body: some View {
        NavigationView {
            BgColorView(color: Color("BackgroundColor")) {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Good morning Janny")
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 16.0)
                        
                        NavigationLink(destination: Summary()) {
                                DashboardSummary()
                                    .buttonStyle(PlainButtonStyle()) 
                        }.buttonStyle(PlainButtonStyle())
    
                        DashboardWeeklyView()
                        DashboardWaterView()
                        PremiumButtonBorder(title: "Premium")
                        DashboardWeightView()
                        DashboardReminderView()
                    }
                }
                .padding([.leading, .trailing], 16.0)
                .padding([.bottom], 4.0)
            }
            .navigationBarHidden(true)
        }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Dashboard()
                .previewDisplayName("iPhone 12 Pro Max")
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}
