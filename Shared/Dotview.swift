//
//  Dotview.swift
//  demotask
//
//  Created by Udaydeep on 15/06/22.
//

import SwiftUI

struct Dotview: View {
    var body: some View {
        VStack{
            HStack {
                Image("circle")
                    .renderingMode(.template)
                    .foregroundColor(.secondary)
            }
            .frame(width: 310, height: 110, alignment: .center)
            .cornerRadius(10.0)
        }
    }
}

struct Dotview_Previews: PreviewProvider {
    static var previews: some View {
        Dotview()
    }
}
