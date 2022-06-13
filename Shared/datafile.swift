//
//  datafile.swift
//  demotask
//
//  Created by Udaydeep on 13/06/22.
//

import SwiftUI

struct datafile: View {
    
    @State var datesday = ["20 MON", "21 TUE", "22 WED", "23 THU" ,"24 FRI", "25 SAT", "26 SUN"]
    
    var eventplus: Eventpass
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            VStack(alignment: .center, spacing: 15){
                ForEach(datesday, id: \.self){ today in
                    Text(today)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                        .frame(width: 60, height: 90)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                }
            }
            VStack{
                VStack {
                    HStack(spacing: 15) {
                        Capsule()
                            .fill(Color("greenmix"))
                            .frame(width: 6, height: 110)
                            .cornerRadius(0)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text(eventplus.tittle)
                                .font(.title3.bold())
                            
                            Text(eventplus.tittletwo)
                                .foregroundColor(.secondary)
                                .lineLimit(0)
                            
                            Text(eventplus.timing)
                                .foregroundColor(.secondary)
                        }
                        Spacer(minLength: 0)
                    }
                }
                .frame(width: 300, height: 100)
                .background(Color("greenlight"))
                .cornerRadius(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
                ForEach(0..<6) { index in
                    dotsview()
                }
            }
        }
        
    }
}
    

struct datafile_Previews: PreviewProvider {
    static var previews: some View {
        listevent()
    }
}

