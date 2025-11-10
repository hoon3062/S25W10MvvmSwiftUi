import SwiftUI

struct ContentView: View {
    @State private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(viewModel.count)")
                .font(.system(
                    size: 100,
                    weight: .bold,
                    design: .rounded
                ))
                .foregroundColor(.blue)
            
            HStack(spacing: 30) {
                Button {
                    viewModel.subCounter()
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                }
                .tint(.red)
                
                Button {
                    viewModel.addCounter()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                }
                .tint(.green)
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
