def divideArray(a):
    result = []
    if len(a) %2 != 0:
        return result

    a.sort()

    lList = []
    rList = []

    count = 0
    for val in a:
        if count %2 == 0:
            if val in lList:
                return []
            lList.append(val)
            count = count + 1
        else:
            if val in rList:
                return []
            rList.append(val)
            count = count + 1

    result.append(lList)
    result.append(rList)
    return result

a = [2, 2, 3, 3, 2, 2]
print(divideArray(a))
