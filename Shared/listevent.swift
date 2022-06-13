//
//  listevent.swift
//  demotask
//
//  Created by Udaydeep on 07/06/22.
//

import SwiftUI

struct listevent: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                ForEach(passevent){eventplus in
                    datafile(eventplus: eventplus)
                }
            }
        }
    }
}





struct listevent_Previews: PreviewProvider {
    static var previews: some View {
        listevent()
    }
}

