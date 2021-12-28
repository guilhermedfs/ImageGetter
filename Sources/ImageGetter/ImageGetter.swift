import SwiftUI

@available(iOS 15.0, *)
public struct ImageGetter: View {
    public let path: String?
    
    public init(path: String?) {
        self.path = path
    }
    
    public var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w342/\(path ?? "")")) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 150, maxHeight: 250)
        } placeholder: {
            ProgressView()
        }
    }
}
