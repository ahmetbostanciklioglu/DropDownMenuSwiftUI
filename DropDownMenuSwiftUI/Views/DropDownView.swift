import SwiftUI

struct DropDownView: View {
    @ObservedObject var viewModel: ViewModel
    var actions: Actions = .init()
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            ExpandButton()
            ActionExpanded()
        }
        .padding(15)
        .background(actions.bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .animation(.spring, value: viewModel.expanded)
    }
    
    /// Dropdown Button
    @ViewBuilder
    func ExpandButton() -> some View {
        HStack() {
            Text("Expand")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            Spacer()
                .frame(width: 40)
            Image(systemName: viewModel.expanded ? "chevron.up" : "chevron.down")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .font(.title3.bold())
                .frame(width: 14, height: 10)
                
                .foregroundStyle(.white)
        }
        .onTapGesture {
            viewModel.expanded.toggle()
        }
    }
    
    /// Expanded Options
    @ViewBuilder
    func ActionExpanded() -> some View {
        if viewModel.expanded {
            ForEach(Options.allCases, id: \.self) { index in
                Button {
                    actions.toggleOption(option: index)
                } label: {
                    Text("Select \(String(describing: index))")
                        .font(.headline.bold())
                }
                .foregroundStyle(.white)
            }
        }
    }
}


#Preview {
    ContentView()
}
