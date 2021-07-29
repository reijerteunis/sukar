//
//  Summary.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 28/07/2021.
//

import SwiftUI

struct Summary: View {
    var body: some View {
            BgColorView(color: Color("BackgroundColor")) {
                Text("Glucose Summary")
                    .navigationTitle("Glucose Summary")
                    .navigationBarTitleDisplayMode(.inline)
                Spacer()
            }
    }
}

struct Summary_Previews: PreviewProvider {
    static var previews: some View {
        Summary()
    }
}
