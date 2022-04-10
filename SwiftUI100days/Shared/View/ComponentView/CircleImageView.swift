//
//  CircleImageView.swift
//  SwiftUI100days
//
//  Created by C02GM15YQ05R on 07/04/2022.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("tiger_computer")
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(.red, lineWidth: 5))
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
