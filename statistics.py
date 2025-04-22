from collections import Counter

class StatisticsCalculator:
    def __init__(self, numbers):
        self.numbers = sorted(numbers)

    def mean(self):
        return sum(self.numbers) / len(self.numbers)

    def median(self):
        n = len(self.numbers)
        mid = n // 2
        if n % 2 == 0:
            return (self.numbers[mid - 1] + self.numbers[mid]) / 2
        else:
            return self.numbers[mid]

    def mode(self):
        counter = Counter(self.numbers)
        max_count = max(counter.values())
        return [num for num, count in counter.items() if count == max_count]

if __name__ == "__main__":
    data = [1, 2, 2, 3, 4]
    calc = StatisticsCalculator(data)
    print(f"Mean: {calc.mean():.2f}")
    print(f"Median: {calc.median():.2f}")
    print(f"Mode(s): {', '.join(map(str, calc.mode()))}")
