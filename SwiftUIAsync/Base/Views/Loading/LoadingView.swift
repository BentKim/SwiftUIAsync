//
//  LoadingView.swift
//  SwiftUIAsync
//
//  Created by Taewoo Kim on 2022/03/22.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Quotes")
            .previewLayout(.sizeThatFits)
    }
}
