import SwiftUI

struct PermissionView: View {
    
    @State var isAnimating = false
    
    var animation: Animation {
        .interpolatingSpring(stiffness: 0.5,
        damping: 0.5)
            .repeatForever()
            .delay(isAnimating ?.random(in: 0...1) : 0)
            .speed(isAnimating ?.random(in: 0.1...1) : 0)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                
                //Images
                ZStack{
                    ForEach(1 ..< 14) {i in
                        Image("food\(i % 7)")
                            .position(x: .random(in: 0...proxy.size.width),
                                      y: .random(in: 0...proxy.size.height / 2)
                            )
                            .animation(animation)
                    }
                    
                }.frame(height: proxy.size.height / 3)
                
                //Text & Button
                Text("Dispee")
                    .font(.title)
                
                Text("Быстро и вкусно в одном приложении!")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Вперёд")
                        .bold()
                }
                .padding()
                .frame(maxWidth: proxy.size.width - 50)
                .background(Color.blue)
                .cornerRadius(50)
                .shadow(radius: 10)
                .foregroundColor(.white)
            }
        }.onAppear {
            isAnimating.toggle()
        }
    }
}

struct ContentViews_Previews: PreviewProvider {
    static var previews: some View {
        PermissionView()
    }
}
