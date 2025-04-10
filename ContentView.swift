import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2 = 0
    var body: some View {
        TextField("Enter A Number", value: $number2, formatter: NumberFormatter())
    }
}
