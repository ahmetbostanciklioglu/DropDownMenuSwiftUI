import SwiftUI

struct Actions {
    var option: Options = .one
    var bgColor = LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom)
    
    /// Select button action part
    func toggleOption(option: Options) {
        switch option {
        case .one:
            print("Selected action 1")
        case .two:
            print("Selected action 2")
        case .three:
            print("Selected action 3")
        }
    }
}
