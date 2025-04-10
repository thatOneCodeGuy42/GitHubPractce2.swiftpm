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
        
        HStack {
            Button {
                answer = number1 + number2
            } label: {
                Text("Add")
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.orange)
                    .background(Color.black)
            }
            
            Button {
                answer = number1 - number2
            } label: {
                Text("Subtract")
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.orange)
                    .background(Color.black)
            }
            
            Button {
                answer = number1 * number2
            } label: {
                Text("Multiply")
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.orange)
                    .background(Color.black)
            }
        }

        Text("The answer is \(answer)")
    }
}
