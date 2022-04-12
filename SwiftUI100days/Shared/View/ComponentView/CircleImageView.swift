//
//  CircleImageView.swift
//  SwiftUI100days
//
//  Created by C02GM15YQ05R on 07/04/2022.
//

import SwiftUI

struct CircleImageView: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(.red, lineWidth: 5))
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        let image = Image("tiger_computer")
        CircleImageView(image: image)
    }
}
