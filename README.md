# py-ver
A tiny utility to run your Python script across different Python and package versions.

## Usage

- Keep the code snippet to be executed in `main.py`.
- Specify fixed requirements in `requirements.txt`.
- Specify the Python versions to be tested in `python-iter.sh`.
- Specify the package versions to be tested in `package-iter.sh`.
- Grant execute permission to `python-iter.sh` using `chmod +x python-iter.sh`.
- Execute `python-iter.sh` using `./python-iter.sh | tee logs.txt`. (`tee` saves output to `logs.txt`, use `-a` to append to an existing file.)

## How it works

- `python-iter.sh` creates and runs a Docker container for each Python version specified in `python-iter.sh`.
- `package-iter.sh` installs the package versions specified in `package-iter.sh` in the Docker container and runs `main.py`.

## Caveats

- The docker commands are written to test x86 in M1 Mac. Modify the docker commands in `python-iter.sh` for other use cases.
- Modify the loop in `package-iter.sh` to test multiple packages.
