extension Array {
    func accumulate(f: (Element) -> Element) -> [Element] {
        var result = [Element]()

        for el in self {
            result.append(f(el))
        }
        return result
    }

    func accumulate(f: (Element) -> [Element]) -> [[Element]] {
        var result = [[Element]]()

        for el in self {
            result.append(f(el))
        }
        return result
    }
}
