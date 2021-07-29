//
//  DiaryView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DiaryView: View {
    var body: some View {
        Text("Diary")
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewDisplayName("iPhone 12 Pro Max")
            .previewDevice("iPhone 12 Pro Max")
    }
}
