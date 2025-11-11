import main
import time

n = 10000
st = time.perf_counter()
main.find_primes_py(n)
print(f"Python ended with {time.perf_counter()-st}")
st = time.perf_counter()
main.find_primes_cy(n)
print(f"cython ended with {time.perf_counter()-st}")
