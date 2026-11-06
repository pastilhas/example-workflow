# example-workflow

A small Python example that splits a string into words, sorts them
alphabetically without regard to case, and writes the result to a file. It uses
only the Python standard library.

## Run

```sh
python process_data.py "pear apple Banana" sorted.txt
```

The output file contains `apple Banana pear` on one line. The original spelling
of each word is kept.

## Run with Docker

```sh
docker build -t word-sorter .

docker run --rm -v "$PWD:/output" word-sorter "pear apple Banana" /output/sorted.txt
```

The sorted result is written to `sorted.txt` in the current directory.
