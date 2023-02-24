
import SwiftUI
 
@available(iOS 14, macOS 11.0, *)
public struct FistPackage {
    public private(set) var text = "Hello, World!"

//     var selectedIndex: Int = 1
        @Namespace private var menuItemTransition
     
        var menuItems = [ "Travel", "Nature", "Architecture" ]
     
        public init(menuItems: [String] = [ "Travel", "Nature", "Architecture" ]) {
            self.menuItems = menuItems
        }
     
        public var body: some View {
     
            HStack {
                Spacer()
     
                ForEach(menuItems.indices) { index in
     
                    if index == 1 {
                        Text(menuItems[index])
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                            .background(Capsule().foregroundColor(Color.purple))
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "menuItem", in: menuItemTransition)
                    } else {
                        Text(menuItems[index])
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                            .background(Capsule().foregroundColor(Color( red: 244, green: 244, blue: 244)))
                            .onTapGesture {
//                                self.selectedIndex = index
                            }
                    }
     
                    Spacer()
                }
     
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .animation(.easeInOut, value: 1)
     
        }
}
