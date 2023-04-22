# GPTDD

GPTDD (GPT-driven Development) is a command-line tool that helps programmers write code using test-driven development with the assistance of ChatGPT. This README was written mostly by ChatGPT.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Installation

Clone the repository from GitHub:

```
git clone https://github.com/jasonswett/gptdd.git
```

Navigate to the project directory:

```
cd gptdd
```

## Usage

Before starting, make sure to paste the content of the `prompts/instructions.txt` file into ChatGPT to provide it with the necessary instructions on how to interact with GPTDD.

1. Run GPTDD in the command line:

```
./gptdd
```

2. Follow the TDD workflow:

   1. Provide a requirement to ChatGPT.
   2. Receive test code from ChatGPT and paste it into GPTDD.
   3. GPTDD updates the codebase and runs the relevant tests.
   4. If the test fails, copy the failure output into ChatGPT, and receive the application code to make the test pass. Paste the code into GPTDD and repeat until the tests pass.
   5. Provide the next requirement to ChatGPT and repeat the process.

Remember to always start by giving ChatGPT the full instructions from `prompts/instructions.txt` so it knows how to properly assist you in the TDD process.

## License

GPTDD is released under the [MIT License](LICENSE).
