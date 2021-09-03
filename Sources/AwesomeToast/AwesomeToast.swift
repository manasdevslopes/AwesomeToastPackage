import SwiftUI

public enum ToastType: String, Equatable, CaseIterable {
    case scaleToast = "scaleToast"
    case offsetToast = "offsetToast"
}

public struct ToastModifier: ViewModifier {
    @Binding var isPresented: Bool
    var title: String = ""
    var message: String? = ""
    var color: Color? = Color.primary.opacity(0.5)
    var duration: Int? = 2
    var alignment: VerticalAlignment? = .bottom
    var toastType: ToastType? = .scaleToast
    var image: Image? = nil
    
    
    var scaleToast: some View {
        VStack {
            if alignment == .bottom {
                Spacer()
            }
            HStack(spacing: 15) {
                if image != nil {
                    image!
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    if !title.isEmpty {
                        Text(title)
                            .toastStyle()
                            .font(.headline)
                    }
                    if !message!.isEmpty {
                        Text(message ?? "")
                            .toastStyle()
                            .font(.footnote)
                    }
                }
            }
            .toastContentModifier(bgColor: color ?? Color.primary.opacity(0.5))
            .opacity(isPresented ? 1 : 0)
            .scaleEffect(isPresented ? 1 : 0)
            .animation(Animation.easeOut)
            
            if alignment == .top {
                Spacer()
            }
        }
    }
    
    var offsetToast: some View {
        VStack {
            if alignment == .bottom {
                Spacer()
            }
            HStack(spacing: 15) {
                if image != nil {
                    image!
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    
                    
                }
                VStack(alignment: .leading) {
                    if !title.isEmpty {
                        Text(title)
                            .toastStyle()
                            .font(.headline)
                    }
                    if !message!.isEmpty {
                        Text(message ?? "")
                            .toastStyle()
                            .font(.footnote)
                    }
                }
            }
            .toastContentModifier(bgColor: color ?? Color.primary.opacity(0.5))
            .opacity(isPresented ? 1 : 0)
            .offset(x: 0, y: isPresented ? alignment == .bottom ? 0 : 0 : alignment == .bottom ? 70 : -100)
            .animation(Animation.easeOut)
            
            
            if alignment == .top {
                Spacer()
            }
        }
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            if toastType == .offsetToast {
                offsetToast
            } else {
                scaleToast
            }
        }
        .onChange(of: isPresented, perform: { value in
            if isPresented {
                toastTime()
            }
        })
    }
    
    
    public func toastTime() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(duration ?? 2 + 1)) {
            withAnimation(Animation.easeOut) {
                isPresented.toggle()
            }
        }
    }
}

extension Text {
    public func toastStyle(textAlignment: TextAlignment = .center) -> some View {
        self
            .multilineTextAlignment(textAlignment)
            .lineLimit(6)
            .foregroundColor(.white)
    }
}

struct ToastContentViewModifier: ViewModifier {
    var bgColor: Color
    
    public func body(content: Content) -> some View {
        content
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(bgColor.shadow(radius: 10))
            .cornerRadius(30)
            .padding()
        
    }
}

extension View {
    public func toastContentModifier(bgColor:Color) -> some View {
        self.modifier(ToastContentViewModifier(bgColor: bgColor))
    }
}

extension View {
    
    /// Only two required parameters are title and the binding to isPresented. All other parameters have default values. And you can set images  from SF Symbols App icons.
    /// - Parameters:
    ///   - title: String
    ///   - message: String
    ///   - isPresented: Binding Boolean (true / false)
    ///   - color: The color for Background. Type is Color
    ///   - duration: Number of seconds, Toast displayed. By default 2sec
    ///   - alignment: An enum value of Type VerticalAlignment
    ///   - toastType: An enum value (scaleToast / offsetToast)
    ///   - image: use SF Symbols App. Type of Image.
    
    public func showToast(title: String, _ message: String? = "", isPresented: Binding<Bool>, color: Color? = Color.primary.opacity(0.5), duration: Int? = 2, alignment: VerticalAlignment? = .bottom, toastType: ToastType? = .scaleToast, image: Image? = nil) -> some View {
        
        self.modifier(ToastModifier(isPresented: isPresented, title: title, message: message, color: color, duration: duration, alignment: alignment, toastType: toastType, image: image))
    }
}

