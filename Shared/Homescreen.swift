//
//  Homescreen.swift
//  demotask
//
//  Created by Udaydeep on 07/06/22.
//

import Foundation
import SwiftUI

struct Homescreen: View {
    
    @State var datas = ["20 THU"]
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            dividerline(dayone: "20-21")
            
            VStack(spacing: 18) {
                ForEach(events){event in
                    // cardview
                    Eventcardview(event: event)
                }
            }
            
            VStack(spacing: 18) {
                ForEach(events2){event in
                    // cardview
                    Eventcardview(event: event)
                }
            }
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct dividerline: View {
    
    var dayone: String
    
    var body: some View {
        HStack(spacing: 10){
            Rectangle()
                .frame(width: 155, height: 0.5, alignment: .trailing)
                .foregroundColor(.gray)
            
            Text(dayone)
            
            Rectangle()
                .frame(width: 155, height: 0.5, alignment: .trailing)
                .foregroundColor(.gray)
        }
    }
}
