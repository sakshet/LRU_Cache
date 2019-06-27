#include "lruCache.hpp"
#include "gtest/gtest.h"

const int NUM_OF_TEST1_RECORDS = 500;
const int NUM_OF_TEST2_RECORDS = 500;
const int TEST2_CACHE_CAPACITY = 100;

TEST(CacheTest, SimplePut) {
    cache::LRUCache<int, int> lruCache(1);
    lruCache.put(8, 150);

    EXPECT_TRUE(lruCache.exists(8));
    EXPECT_EQ(150, lruCache.get(8));
    EXPECT_EQ(1, lruCache.size());
}

TEST(CacheTest, MissingValue) {
    cache::LRUCache<int, int> lruCache(1);
    EXPECT_THROW(lruCache.get(7), std::range_error);
}

TEST(CacheTest1, KeepsAllValuesWithinCapacity) {
    cache::LRUCache<int, int> lruCache(TEST2_CACHE_CAPACITY);

    for (int i = 0; i < NUM_OF_TEST2_RECORDS; i++) {
        lruCache.put(i, i);
    }

    for (int i = 0; i < NUM_OF_TEST2_RECORDS - TEST2_CACHE_CAPACITY; i++) {
        EXPECT_FALSE(lruCache.exists(i));
    }

    for (int i = NUM_OF_TEST2_RECORDS - TEST2_CACHE_CAPACITY; i < NUM_OF_TEST2_RECORDS; i++) {
        EXPECT_TRUE(lruCache.exists(i));
        EXPECT_EQ(i, lruCache.get(i));
    }

    size_t size = lruCache.size();
    EXPECT_EQ(TEST2_CACHE_CAPACITY, size);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    int ret = RUN_ALL_TESTS();
    return ret;
}
