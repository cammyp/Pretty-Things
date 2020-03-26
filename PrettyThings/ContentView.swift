import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        VStack {
                            ForEach(itemsArray, id: \.id) { clothing in
                                NavigationLink(destination: ItemView(current: clothing)) {
                                    ImageTemplate(name: "\(clothing.image)", width: 250.0, height: 350.0)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                        VStack {
                            ForEach(itemsArray.reversed(), id: \.id) { clothing in
                                NavigationLink(destination: ItemView(current: clothing)) {
                                    ImageTemplate(name: "\(clothing.image)", width: 250.0, height: 350.0)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
