#ifndef _LRUCache_HPP_INCLUDED_
#define	_LRUCache_HPP_INCLUDED_

#include <unordered_map>
#include <list>
#include <cstddef>
#include <stdexcept>

namespace cache {

	template<typename tKey, typename tValue>
	class LRUCache {

	public:
		// Cache Hash Map
		typedef typename std::pair<tKey, tValue> tKeyValuePair;

		// Cache Linked List
		typedef typename std::list<tKeyValuePair>::iterator tListIterator;

		// Constructor
		LRUCache(size_t maxSize) :
			maxSize(maxSize) {
		}

		// Function to put a key value pair in the cache
		void put(const tKey& key, const tValue& value) {
			auto it = cacheMap.find(key);

			// Add key value pair to the front of list
			cacheList.push_front(tKeyValuePair(key, value));

			// Key found in the cache map
			if (it != cacheMap.end()) {
				// Remove from both list and hashmap
				cacheList.erase(it->second);
				cacheMap.erase(it);
			}

			// Point the front of list to the cache map
			cacheMap[key] = cacheList.begin();

			// If current size is greater than the maximum size
			if (size() > maxSize) {
				// Remove last element from both list and hashmap
				auto last = cacheList.end();
				last--;
				cacheMap.erase(last->first);
				cacheList.pop_back();
			}
		}

		// Get value corresponding to a particular key
		const tValue& get(const tKey& key) {
			auto it = cacheMap.find(key);
			// If key not found in map
			if (it == cacheMap.end()) {
				// Throw error
				throw std::range_error("Key not found in cache");
			} else {
				// Put the key value pair in front of the list
				cacheList.splice(cacheList.begin(), cacheList, it->second);

				// Return the value
				return it->second->second;
			}
		}

		// Find if the key exists in the hash map
		bool exists(const tKey& key) const {
			return cacheMap.find(key) != cacheMap.end();
		}

		// Get the current size of hash map
		size_t size() const {
			return cacheMap.size();
		}

	private:
		// Linked list for our cache
		std::list<tKeyValuePair> cacheList;

		// Hash map to store key value pairs
		std::unordered_map<tKey, tListIterator> cacheMap;

		// Variable to store maximum size of our cache
		size_t maxSize;
	};
}

#endif
