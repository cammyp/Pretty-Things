import SwiftUI

struct ItemView: View {
    
    var current: item
    
    var body: some View {
        VStack {
            
            HStack(alignment: .top) {
                ImageTemplate(name: current.image, width: 215.0, height: 300.0)
                
                VStack(alignment: .leading) {
                    Image("star")
                    .resizable()
                    .frame(width: 120.0, height: 20.0)
                    Text("NEW")
                        .fontWeight(.bold)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                        .background(Color.green.opacity(0.25))
                }
            }.offset(x: -20)
            
            
            VStack {
                TextTemplate(text: current.item, top: 35, size: 25, bottom: 0, textColor: Color.black, weight: .regular, backgroundColor: Color.white)
                
                TextTemplate(text: current.sku, top: 5, size: 15, bottom: 0, textColor: Color.gray, weight: .regular, backgroundColor: Color.white)
                
                TextTemplate(text: "US$\(current.price)0", top: 5, size: 40, bottom: 0, textColor: Color.black, weight: .bold, backgroundColor: Color.white)
                
                TextTemplate(text: "or 4 interest-free payments of US$\(current.price/4)", top: 0, size: 15, bottom: -10, textColor: Color(0x535353), weight: .regular, backgroundColor: Color.white)
            }
            
            TextTemplate(text: "ADD TO BAG", top: 10, size: 30, bottom: 10, textColor: Color.white, weight: .bold, backgroundColor: Color.black.opacity(4)).offset(y: 20)
        }
        //.offset(y: -35)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(current: t6)
    }
}
