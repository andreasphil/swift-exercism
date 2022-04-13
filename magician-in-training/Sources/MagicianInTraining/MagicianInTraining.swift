func getCard(at index: Int, from stack: [Int]) -> Int {
    stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    guard index < stack.count && index >= 0 else {
        return stack
    }
    
    var newStack = stack
    newStack[index] = newCard
    
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    stack + [newCard]
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index < stack.count && index >= 0 else {
        return stack
    }
    
    var newStack = stack
    newStack.remove(at: index)
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    guard !stack.isEmpty else {
        return stack
    }
    
    return removeCard(at: stack.count - 1, from: stack)
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    [newCard] + stack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    guard !stack.isEmpty else {
        return stack
    } 
    
    return Array(stack.dropFirst())
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    let evenCards = stack.filter { card in
        return card.isMultiple(of: 2)
    }
    
    return evenCards.count
}
