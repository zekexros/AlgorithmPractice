import Foundation

typealias Printer = (index: Int, value: Int)

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var printer: [Printer] = []
    var result = [Printer]()
    
    for (index, value) in priorities.enumerated() {
        printer.append(Printer(index: index, value: value))
    }
    
    while result.count != priorities.count {
        if printer.count > 1 {
            let temp = printer[1...].max{$0.value < $1.value}?.value
            if printer[0].value < temp! {
                let remove = printer.removeFirst()
                printer.append(remove)
            } else {
                result.append(printer.removeFirst())
            }
        } else {
            result.append(printer.removeFirst())
        }
    }
    
    for (index,printer) in result.enumerated() {
        if printer.index == location {
            return index + 1
        }
    }
    
    return 0
}
