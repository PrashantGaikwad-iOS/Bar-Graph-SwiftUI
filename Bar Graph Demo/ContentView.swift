//
//  ContentView.swift
//  Bar Graph Demo
//
//  Created by Prashant Gaikwad on 13/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("My Report")
                .font(.system(size: 40))
                .foregroundColor(.blue)
            
            ScrollView(.horizontal) {
                BarGraph(reports: Report.all())
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
