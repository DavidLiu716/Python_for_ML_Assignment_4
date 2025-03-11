import os

USERNAME = "xdliu"

def main():
    output_file = f"/app/data/output_{USERNAME}.txt"
    with open(output_file, "w") as f:
        f.write(f"Hello from {USERNAME}!\n")
    print(f"File written: {output_file}")

if __name__ == "__main__":
    main()