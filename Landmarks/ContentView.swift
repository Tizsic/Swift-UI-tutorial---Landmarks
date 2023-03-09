//
//  ContentView.swift
//  Landmarks
//
//  Created by Stefan Baggoo on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -200)
                .padding(.bottom, -170)
            
            VStack(alignment: .leading){
                Text("turtle rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            Divider()
            Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive Text Goes Here")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
