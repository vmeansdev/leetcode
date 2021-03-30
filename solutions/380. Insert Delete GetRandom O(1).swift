        guard let index = state[val] else {
            return false
        }
        if index != store.count - 1 {
            let tmp = store[index]
            store[index] = store[store.count - 1]
            store[store.count - 1] = tmp
            state[store[index]] = index
        }
        store.removeLast()
        state.removeValue(forKey: val)
        count -= 1
        return true
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        let index = Int.random(in: 0 ..< count)
        return store[index]
    }
}
​
/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
