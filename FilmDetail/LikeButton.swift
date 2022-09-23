//
//  LikeButton.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct LikeButton : View {
    @State var isPressed = false
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
                .animation(.linear)
            Image(systemName: "heart")
        }.font(.system(size: 20))
            .onTapGesture {
                self.isPressed.toggle()
        }
        .foregroundColor(isPressed ? .purple : .purple)
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
    }
}
