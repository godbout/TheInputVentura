import SwiftUI


struct InputView: View {

    @EnvironmentObject var input: Input
    
    var body: some View {
        Form {
            TextField("", text: $input.value)
                .font(.system(size: 32))
                .frame(minWidth: 50)
                .fixedSize()
        }
    }
        
}
