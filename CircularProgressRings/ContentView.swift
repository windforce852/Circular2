//
//  ContentView.swift
//  CircularProgressRings
//
//  Created by Kwan Ho Leung on 27/3/2022.
//

import SwiftUI

struct ContentView: View {

    @State var sliderValue:Double = 0
    
    var body: some View {
        VStack{
            Spacer()
            CircularView(sliderValue: $sliderValue)
                .frame(width: 390.0, height: 150.0)
                .padding()

            Slider(
                value: $sliderValue,
                in: 0...360) {
                Text("speed")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("360")
                }
                .padding(.horizontal, 50)
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
