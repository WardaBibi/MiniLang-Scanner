# MiniLang-Scanner

This repository contains the source code for a compiler component, specifically a lexical analyzer (scanner), developed as part of Assignment 1.

**Scanner Directory Structure:**

```
Scanner/
│
├── config.c     // Configuration file (optional)
├── lex.yy.c     // Generated C code from Flex
├── makefile     // Makefile for building the scanner
├── samples/     // Directory containing sample input files
│   ├── code1.c  // Sample source code file 1
│   ├── code1.png // Screenshot or visualization of sample code 1 (optional)
│   ├── code2.c  // Sample source code file 2
│   └── code2.png // Screenshot or visualization of sample code 2 (optional)
├── scan         // Executable scanner binary
└── scanner.l    // Flex scanner specification file
```

**Usage:**

1. **Building the Scanner:**
   - Navigate to the `Scanner` directory.
   - Run `make` command to build the scanner using the provided `makefile`.

2. **Alternative way of Running the Scanner:**
   - lex scanner.l
   - gcc lex.yy.c -o scan
   - After successful compilation, an executable named `scan` will be generated.
   - Execute the scanner by running `./scan < config.c`
   - 
4. **Sample Input Files:**
   - Sample input files are provided in the `samples` directory.
   - These files (`code1.c`, `code2.c`, etc.) contain source code snippets for testing the scanner.
  
**Report:**

- The `Report.pdf` file in the root directory contains a detailed report documenting the design, implementation details, and test cases of the scanner component.
- Refer to this report for an in-depth overview of the scanner's functionality and performance.

**Notes:**

- Ensure that Flex (Lexical Analyzer Generator) is installed on your system to generate the scanner code (`lex.yy.c`).
- Make sure to review the `config.c` file for any additional configurations or settings specific to your compiler project.
- For any issues or inquiries, please contact the repository owner at wardabibi69@gmail.com.

**Contributors:**

- Warda (wardabibi69@example.com)
