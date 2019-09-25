def countOnSubarrays(a, queries):
    result = 0
    for query in queries:
        print(a[query[0]:query[1]+1])
        result = result + a[query[0]:query[1]+1].count(query[2])
    return result


a = [1, 2, 1, 3, 1, 2, 1]
queries = [
[1, 3, 3],
[0, 4, 1],
[2, 5, 2],
[5, 6, 1]
]

print(countOnSubarrays(a, queries))
