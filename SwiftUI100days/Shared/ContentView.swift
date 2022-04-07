//
//  ContentView.swift
//  Shared
//
//  Created by C02GM15YQ05R on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Row 1")
                    .font(.title)
                    .foregroundColor(Color.green)
                    .padding()
                Text("Row 2")
                    .font(.title)
                    .foregroundColor(Color.green)
                    .padding()
            }
            HStack {
                Text("Row 1")
                    .font(.subheadline)
                    .foregroundColor(Color.green)
                    .padding()
                Text("Row 2")
                    .font(.subheadline)
                    .foregroundColor(Color.green)
                    .padding()
            }
            CircleImageView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
