import random
import time

def generate_random_numbers(count):
    numbers = [random.randint(1, 100) for _ in range(count)]
    print(f"Generated {count} random numbers: {numbers}")

def main():
    while True:
        generate_random_numbers(10)  # Generate 10 random numbers
        time.sleep(60)  # Wait for 60 seconds before generating new numbers

if __name__ == "__main__":
    main()
