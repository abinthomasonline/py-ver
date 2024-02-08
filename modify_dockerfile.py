import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--version", help="The version of the image to be built")
    args = parser.parse_args()

    with open("Dockerfile", "r") as f:
        lines = f.readlines()

    with open("Dockerfile", "w") as f:
        for line in lines:
            if line.startswith("FROM python:"):
                line = f"FROM python:{args.version}\n"
            f.write(line)
            