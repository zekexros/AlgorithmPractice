func solution(_ sizes:[[Int]]) -> Int {
    let sortedSizes = sizes.map { $0.sorted(by: >) }
    let firstElementsOfSizes = sortedSizes.reduce([Int](), { $0 + [$1[0]] })
    let secondElementOfSizes = sortedSizes.reduce([Int](), { $0 + [$1[1]] })
    
    return firstElementsOfSizes.max()! * secondElementOfSizes.max()!
}
