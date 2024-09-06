import random

def generate_random_numbers(n):
    return [random.randint(1, 100) for _ in range(n)]

if __name__ == "__main__":
    count = int(input("How many random numbers? "))
    numbers = generate_random_numbers(count)
    print(f"Generated numbers: {numbers}")
