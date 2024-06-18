from collections import Counter, defaultdict

def create_histogram(word):
    """
    Creates a histogram (frequency dictionary) for a given word.
    """
    return tuple(sorted(Counter(word).items()))

def create_histogram_dict(word_list):
    """
    Creates a dictionary where the key is the histogram and the value is the word.
    """
    histogram_dict = {}
    for word in word_list:
        histogram = create_histogram(word)
        histogram_dict[histogram] = word
    return histogram_dict

def lookup_word(histogram_dict, word):
    """
    Looks up a word in the histogram dictionary using its histogram.
    """
    histogram = create_histogram(word)
    return histogram_dict.get(histogram, None)

def read_words_from_file(filename):
    """
    Reads words from a file, where each line is a word.
    """
    with open(filename, 'r') as file:
        words = [line.strip() for line in file]
    return words

# Example usage
filename = 'english.txt'
word_list = read_words_from_file(filename)
histogram_dict = create_histogram_dict(word_list)


def main(filename, lookup_word_input):
    """
    Main function to read the word list, create the histogram dictionary, and look up a word.
    """
    word_list = read_words_from_file(filename)
    histogram_dict = create_histogram_dict(word_list)
    result = lookup_word(histogram_dict, lookup_word_input)
    return result

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print("Usage: python script.py <wordlist_file> <word_to_lookup>")
    else:
        filename = sys.argv[1]
        lookup_word_input = sys.argv[2]
        result = main(filename, lookup_word_input)
        if result:
            print(f"Lookup result for '{lookup_word_input}': {result}")


