//
//  DashboardSummaryCardView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardSummaryCardView: View {
    var title: String
    var result: Float
    var background: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.medium)
                .foregroundColor(Color("WhiteColor"))
                .font(.system(size: 15))
            Spacer()
                .frame(height: 16.0)
            HStack(alignment: .bottom) {
                Text(String(format: "%.1f", result))
                    .fontWeight(.medium)
                    .foregroundColor(Color("WhiteColor"))
                    .font(.system(size: 16))
                Text("mmol/L")
                    .foregroundColor(Color("WhiteColor"))
                    .font(.system(size: 10))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 8.0)
        .background(background)
        .cornerRadius(8)
    }
}

struct DashboardSummaryCardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardSummaryCardView(title: "Lowest", result: 3.5, background: Color("PrimaryColor"))
            .previewLayout(.fixed(width: 98.0, height: 75))
    }
}
