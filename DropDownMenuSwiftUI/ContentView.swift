import SwiftUI
import Combine

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        DropDownView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
