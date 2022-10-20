//
//  EntryView.swift
//  WidgetSample
//
//  Created by Alexander von Below on 20.10.22.
//

import SwiftUI

struct EntryView: View {
    @State var image: UIImage? = nil

    var body: some View {
        HStack(spacing: 0) {
            Text("Short")
                .frame(minWidth: 0, maxWidth: .infinity)
            
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .clipped()
            } else {
                Text ("Much, much longer")
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        .task {
            do {
                let url = URL(string: "https://live.staticflickr.com/2076/1974151170_650cf10eb5_c_d.jpg")!
                let (data, _) = try await URLSession.shared.data(from: url)
                 image = UIImage(data: data)
            } catch {
                print ("Error downloading file")
            }
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
