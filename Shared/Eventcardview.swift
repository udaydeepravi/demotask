//
//  Eventcardview.swift
//  demotask
//
//  Created by Udaydeep on 07/06/22.
//

import SwiftUI

struct Eventcardview: View {
    
    var event: Event
    //    var eventdate: Eventpass
    
    var body: some View {
        //
        HStack(spacing: 20){
            //Converting space as new line
            
            Text(getDate())
                .font(.title3.monospacedDigit())
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .frame(width: 50, height: 50)
                .padding(.leading)
                .padding(.bottom)
            //
            HStack {
                VStack{
                    VStack {
                        HStack(spacing: 15) {
                            Capsule()
                                .fill(event.color)
                                .frame(width: 6, height: 99)
                                .cornerRadius(0)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(event.tittle)
                                    .font(.title3.bold())
                                
                                Text(event.tittletwo)
                                    .foregroundColor(.secondary)
                                    .lineLimit(0)
                                
                                Text(event.timing)
                                    .foregroundColor(.secondary)
                            }
                            Spacer(minLength: 0)
                        }
                    }
                    //            .padding()
                    .frame(width: 300, height: 100)
                    .cornerRadius(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                }
            }
            
        }
    }
    
    func getDate()->String{
        return event.data.replacingOccurrences(of: " ", with: "\n")
    }
    
}

struct Eventcardview_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

