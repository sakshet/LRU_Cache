def getNumDigits(s):
    count = 0
    for val in s:
        if val.isdigit():
            count = count + 1
    return count

def removeOneDigit(s, t):
    result = 0
    if s[0] < t[0]:
        result = getNumDigits(s[1:]) + getNumDigits(t[1:])
        if s[1:] < t:
            result = result + 1
        if s < t[1:]:
            result = result + 1
    elif s[0] > t[0]:
        if s[1:] < t:
            result = result + 1
        if s < t[1:]:
            result = result + 1
    else:
        result = removeOneDigit(s[1:], t[1:])
    return result

s = "96726"
t = "9z34c"
print(removeOneDigit(s, t))
