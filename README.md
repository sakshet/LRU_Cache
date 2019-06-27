Simple Least Recently Used (LRU) cache for C++


The library is header-only. Since the code includes standard components and very little own logic, it guarantees reliability


Data Structures used:
1. Hash Map
2. Linked List


Steps to run tests:
```
mkdir build
cd build
cmake ..
make check
```


Examples:

1. Create cache with maximum size 5:
```
lruCache <std::string, std::string> cache(5);
```

2. Put key-value pairs in cache
```
cache.put("One", "One");
cache.put("Two", "Two");
```

3. Get value from cache
```
const string& from_cache = cache.get("Two")
```
