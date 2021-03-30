​
class RandomizedSet {
​
    private var store: [Int] = []
    private var state: [Int: Int] = [:]
    
    /** Initialize your data structure here. */
    init() { }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        guard state[val] == nil else {
            return false
        }
        store.append(val)
        state[val] = store.count - 1
        return true
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
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
        return true
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        let index = Int.random(in: 0 ..< store.count)
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
