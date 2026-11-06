import argparse
from pathlib import Path


def sort_words(text):
    return sorted(text.split(), key=str.casefold)


def main(argv=None):
    parser = argparse.ArgumentParser(description="Sort words in a string and write them to a file.")
    parser.add_argument("text", help="string containing words to sort")
    parser.add_argument("output_file", type=Path, help="file for the sorted words")
    args = parser.parse_args(argv)

    try:
        words = sort_words(args.text)
        args.output_file.write_text(" ".join(words) + "\n", encoding="utf-8")
    except OSError as error:
        parser.error(str(error))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
