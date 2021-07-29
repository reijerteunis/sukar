//
//  DashboardWaterView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardWaterView: View {
    var body: some View {
        BaseWidget(
            header: DashboardWidgetHeaderView(
                title: "Water",
                icon: "drop",
                iconColor: Color("PrimaryColor"),
                chevron: false
            ),
            content: HStack(spacing: 8,content: {
                Text("hi")
            }),
            footer: BaseWidgetFooterText(title: "We recommend you drink 3 liter per day")
        )
    }
}

struct DashboardWaterView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardWaterView()
            .previewLayout(.fixed(width: 380.0, height: 224))
    }
}
