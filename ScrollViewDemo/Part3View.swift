//
// Created for ScrollViewDemo
// by  Stewart Lynch on 2023-07-31
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on Twitter: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct Part3View: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                    ForEach(ImageAsset.all) { asset in
                        Image(asset.name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 225)
                }
            }
            .navigationTitle("ScrollView Animation")
        }
    }
}

#Preview {
    Part3View()
}
