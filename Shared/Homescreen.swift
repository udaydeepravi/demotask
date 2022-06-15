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
            
            Dividerline(dayone: "20-21")
            
            VStack(spacing: 18) {
                
                ForEach(events) { singleEvent in
                    
                    if singleEvent.tittle.isEmpty {
                        Dotview()
                    } else {
                        // cardview
                        Eventcardview(event: singleEvent)
                    }
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

struct Dividerline: View {
    
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
