def countOnSubarrays(a, queries):
    result=0
    for query in queries:
        for i in range(query[0], query[1]+1):
            if a[i] == query[2]:
                result = result + 1
    return result


a = [1, 2, 1, 3, 1, 2, 1]
queries = [
[1, 3, 3],
[0, 4, 1],
[2, 5, 2],
[5, 6, 1]
]

print(countOnSubarrays(a, queries))
