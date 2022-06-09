import Charts
import SwiftUI

struct FirstChart: View {
    var body: some View {
        VStack {
            Text("Pancakes Sold")
                .font(.title.bold())
            
            Chart {
                BarMark(x: .value("Name", "Cachapa"),
                        y: .value("Sales", 916))
            }
        }
    }
}
