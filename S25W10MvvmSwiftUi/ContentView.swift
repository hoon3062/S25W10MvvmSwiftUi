import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            HStack {
                Button("감소") {
                    count -= 1
                }
                
                Button("증가") {
                    count += 1
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
