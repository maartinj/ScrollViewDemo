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

struct Part2View: View {
    var body: some View {
        NavigationStack {
            ScrollView { // This is only here because of the tabView
                VStack(alignment: .leading) {
                    Text("Paging").padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(ImageAsset.all) { asset in
                                Image(asset.name)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 225)
                            }
                        }
                    }
                    
                    Divider()
                    
                    Text("ViewAligned").padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(ImageAsset.all) { asset in
                                Image(asset.name)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 225)
                            }
                        }
                    }
                    // Button HStack
                    HStack {
                        Spacer()
                        Button("First") {

                        }
                        Text("Image name")
                        Button("Last") {
                           
                        }
                        Spacer()
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }
            }
            .navigationTitle("Part 2")
        }
    }
}

#Preview {
    Part2View()
}


struct ImageAsset: Identifiable {
    var id:Int
    var name: String
    
    static var all: [ImageAsset] {
        [
            .init(id: 11, name: "Haleakela"),
            .init(id: 12, name: "Monkey"),
            .init(id: 13, name: "Flowers"),
            .init(id: 14, name: "Crop Rows"),
            .init(id: 15, name: "Respite Pond"),
            .init(id: 16, name: "Hoover Dam"),
            .init(id: 17, name: "Wailaia"),
            .init(id: 18, name: "Gyro Beach"),
            .init(id: 19, name: "Palm Springs"),
            .init(id: 20, name: "Elephant Mountain"),
            .init(id: 21, name: "Borrego Springs"),
            .init(id: 10, name: "Desert Hills"),
        ]
    }
    
    static func name(_ id: Int) -> String {
        ImageAsset.all.first { $0.id == id }?.name ?? ""
    }
}
