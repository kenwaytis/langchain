def combine_lines(file_name, line_count=10):
    with open(file_name, 'r') as file:
        lines = file.readlines()

    combined_lines = []
    for i in range(0, len(lines), line_count):
        combined_line = ''.join(lines[i: i + line_count]).replace('\n', ' ')
        combined_lines.append(combined_line)

    return combined_lines

if __name__ == "__main__":
    file_name = "test.txt"
    combined_lines = combine_lines(file_name)

    with open("test_combine.txt", 'w') as output_file:
        for line in combined_lines:
            output_file.write(line + '\n')

