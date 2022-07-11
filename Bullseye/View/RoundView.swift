import SwiftUI

struct RoundedViewImageStroked: View {
    
    var systemName:String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("RoundedViewColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedViewImageFilled: View {
    
    var systemName:String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title)
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("RoundedViewColor"), lineWidth: 2.0)
            )
            
    }
}

struct RoundRectTextView: View {
    
    var text:String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title2)
            .bold()
            .kerning(-0.2)
            .frame(width:68, height:56)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color("RoundedViewColor"), lineWidth: 2.0, antialiased: true)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedViewImageStroked(systemName: "arrow.counterclockwise")
            RoundedViewImageFilled(systemName: "list.dash")
            RoundRectTextView(text:"100")
        }
        
    }
}

struct RoundedView_Previews: PreviewProvider {
    static var previews:some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
