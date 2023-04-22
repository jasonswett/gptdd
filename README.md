# GPTDD - Test-Driven Development with ChatGPT Assistance

(Note: this README was written almost entirely by ChatGPT.)

GPTDD is a command-line tool that simplifies the process of test-driven development (TDD) by leveraging the power of ChatGPT. It streamlines the workflow for writing tests and implementing features, helping you write cleaner, more reliable code.

## Features

- Interacts with ChatGPT to generate test cases and application code
- Supports iterative test-driven development
- Provides guidance for breaking down complex requirements into smaller substeps
- Integrates with your existing codebase and testing framework

## Installation

Before you begin, make sure you have Ruby installed on your system. GPTDD is designed to work with Ruby projects using RSpec for testing.

To install GPTDD, follow these steps:

1. Clone the GPTDD repository to your local machine:

```
git clone https://github.com/jasonswett/gptdd.git
```

2. Navigate to the `gptdd` directory:

```
cd gptdd
```

3. Install the required Ruby gems:

```
bundle install
```

4. Add the `gptdd` executable to your system's `PATH` environment variable. You can do this by adding the following line to your shell configuration file (e.g., `.bashrc`, `.zshrc`, or `.bash_profile`):

```
export PATH="$PATH:/path/to/gptdd/bin"
```

Replace `/path/to/gptdd` with the actual path to the `gptdd` directory.

5. Restart your shell or run `source` on your shell configuration file to apply the changes.

## Usage

To start using GPTDD, follow this workflow:

1. Open your terminal and run `gptdd`:

```
gptdd
```

2. GPTDD will prompt you for a requirement. Provide a clear and concise description of the feature you want to implement.

3. GPTDD, with the assistance of ChatGPT, will generate test code based on your requirement.

4. Copy the test code and paste it into the appropriate test file in your project.

5. Run the tests and observe the output.

6. If the test fails, provide the failure output to GPTDD. GPTDD will generate the application code needed to make the test pass.

7. Copy the application code and paste it into the appropriate file in your project.

8. Run the tests again to verify that the failure has been resolved.

9. Repeat this process until your feature is fully implemented and all tests pass.

## Contributing

Contributions to GPTDD are welcome! Please follow these guidelines to contribute:

1. Fork the repository on GitHub.
2. Create a new branch for your changes.
3. Commit your changes and push them to your fork.
4. Open a pull request to merge your changes into the main repository.

Please include tests for any new features or bug fixes, and make sure all tests pass before submitting your pull request.

## License

GPTDD is released under the MIT License. See the [LICENSE](LICENSE) file for more information.
