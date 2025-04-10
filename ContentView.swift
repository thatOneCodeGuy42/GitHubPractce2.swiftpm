import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2 = 0
    @State var answer = 0
    var body: some View {
        
        TextField("", value: $number1, formatter: NumberFormatter())
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .foregroundStyle(.purple)
            .rotationEffect(Angle(degrees: 65))
        
        TextField("Enter A Number", value: $number2, formatter: NumberFormatter())
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .foregroundStyle(.purple)
            .rotationEffect(Angle(degrees: 165))
        
        Button {
            answer = number1 + number2
        } label: {
            Text("Add")
        }
        
        Button {
            answer = number1 - number2
        } label: {
            Text("Subtract")
        }
        
        Button {
            answer = number1 * number2
        } label: {
            Text("Multiply")
        }

        Text("The answer is \(answer)")
    }
}
