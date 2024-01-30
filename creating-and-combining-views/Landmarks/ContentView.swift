import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 360)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("雷峰塔")
                    .font(.title)
                HStack {
                    Text("西湖风景名胜区·雷峰塔景区")
                        .font(.subheadline)
                    Spacer()
                    Text("浙江·杭州")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("电话")
                    .foregroundStyle(.secondary)
                Text("+86 (571) 8798 2111")
                    .font(.subheadline)
                    .foregroundStyle(.blue)
                    .onTapGesture {
                        if let phoneURL = URL(string: "tel://+8657187982111") {
                            UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
                        }
                    }
                
                Text("地址")
                    .foregroundStyle(.secondary)
                Text("中国浙江省杭州市西湖区南山路15号")
                    .font(.subheadline)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
