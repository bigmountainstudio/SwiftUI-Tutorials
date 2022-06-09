//  Created by Mark Moeykens on 6/9/22.

import Charts
import SwiftUI

struct Pancakes: Identifiable {
    let name: String
    let sales: Int
    
    var id: String { name }
}

let sales: [Pancakes] = [
    Pancakes(name: "Cachapa", sales: 916),
    Pancakes(name: "Injera", sales: 850),
    Pancakes(name: "Crêpe", sales: 802),
    Pancakes(name: "Jian Bing", sales: 753),
    Pancakes(name: "Dosa", sales: 654),
    Pancakes(name: "American", sales: 618),
]

struct ChartExample: View {
    var body: some View {
        VStack {
            Text("Pancakes Sold")
                .font(.title.bold())
            Chart(sales) { saleData in
                BarMark(x: .value("Sales", saleData.sales),
                        y: .value("Name", saleData.name))
            }
        }
    }
}

struct ChartExample_Previews: PreviewProvider {
    static var previews: some View {
        ChartExample()
    }
}
