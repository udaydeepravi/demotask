//
//  eventpart.swift
//  demotask
//
//  Created by Udaydeep on 10/06/22.
//

import SwiftUI

struct eventpart: View {
    
    @State  var datesname = ["20 MON", "21 TUE", "22 WED", "23 THU" ,"24 FRI", "25 SAT"]
    
    @State var event = Eventpass(tittle: "valenti McRoland", tittletwo: "1o1 Catchup", timing: "11:15 AM - 1:00 PM")
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            HStack (spacing: 20){
                VStack(spacing: 60) {
                    ForEach(datesname, id: \.self){ today in
                        Text(today)
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.secondary)
                            .frame(width: 60, height: 70)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 15)
                        
                    }
                }
                VStack(spacing: 30){
                    HStack {
                        Capsule()
                            .fill(Color("greenmix"))
                            .frame(width: 6, height: 110)
                            .cornerRadius(0)
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text(event.tittle)
                                .font(.title3.bold())
                            
                            Text(event.tittletwo)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 10)
                            
                            Text(event.timing)
                                .foregroundColor(.secondary)
                        }
                    }
                    .frame(width: 310, height: 110, alignment: .leading)
                    .background(Color("greenlight"))
                    .cornerRadius(10.0)
                    
                    ForEach(0..<5) { index in
                        dotsview()
                    }
                }
            }
        }
    }
}

struct eventpart_Previews: PreviewProvider {
    static var previews: some View {
        eventpart()
    }
}


struct dotsview: View {
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
