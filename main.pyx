def find_primes_py(n):
    primes = []
    found = 0
    number = 2
    while found<n:
        for x in primes:
            if number%x ==0:
                break
        else:
            primes.append(number)
            found+=1
        number +=1
    return primes

def find_primes_cy(int n):
    cdef int found,number,x
    cdef list primes = []
    n = min(n,100000)

    found = 0
    number = 2
    while found< n:
        for x in primes[:found]:
            if number%x ==0:
                break
        else:
            primes[found] = number
            found+=1
        number +=1
    return [x for x in primes[:n]]
