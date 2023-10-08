# Bash_Scripts_to_make_life_Easier
You can include any Bash scripts that can help anyone. This repository is intended to assist others by establishing an opensource project in which anyone can propose a valid PR (Pull Request) while adhering to the Contributing Guidelines.
[Contributing.md](https://github.com/sudipnext/Bash_Scripts_to_make_life_Easier/blob/main/CONTRIBUTING.md)

## Table of Contents
<!--ts-->
   * [Rules To Be Followed](#rules-to-be-followed)
   * [Installation and Setup](#installation-and-setup)
   * [Applications](#applications)
        * [Simple Bash Programs](#simple-bash-programs)
        * [Files-Folder Scripts](#files-folder)
        * [Text-Utility Scripts](#text-utility)
        * [Installation Utilities](#installation-utilities)
        * [Command-Line Games](#command-line-games)
   * [License](#license)
<!--te-->

## RULES TO BE FOLLOWED
1. Do not Spam or Use Minor changes like deleting a space and make PR
2. Respect Others Code as they are their property. So, If you are putting something that's not your own avoid it or give proper credit to the individual or use on the developers consent.
3. Do not put other code or scripts rather than Bash. This is entirely focused in Bash and Bash Scripting Only.
4. Avoid Duplicates


[P.S Don't Forgot to Star if you Liked it or You are helped Somehow. It motivates us to run such Opensource Projects.]

## Installation and Setup

For users new to bash, you can place the scripts in your home directory or in the `~/bin/` directory. If you want to execute scripts from any location without specifying the relative path, add the directory containing the scripts to your `PATH` environment variable. You can do this by editing your shell configuration file (`~/.bash_profile` or `~/.zshrc`) with the following line:

`export PATH=$PATH:~/path-to-script-directory`

After saving the config file, you will need to restart the shell or run:
`source ~/.bash_profile` or `source ~/.zshrc` depending on which file you edited. 

Also note that you may need to grant execution permission to the bash script by running:

`chmod +x path-to-script.sh`

Exercise caution and review the script's code thoroughly before making it executable to ensure it aligns with intended functionality and security standards.

## APPLICATIONS

### Simple-bash-programs
| FILE                                                              | USAGE                 | DESCRIPTION                                   |
| ---------------------------------------------------------         | --------------------- | -----------                                   |
| [helloworld.sh](/simple-bash-programs/helloworld.sh)              | ./helloworld.sh       |  Hello World Example                          |
| [addTwoNumbers.sh](simple-bash-programs/addTwoNumbers.sh)         | ./addTwoNumbers.sh    |  Addition Example Using Bash                  |
| [compare.sh](simple-bash-programs/compare.sh)                     | ./compare.sh          |  Comparison Example (String Length & Numbers) |
| [pyramidForLoop.sh](simple-bash-programs/pyramidForLoop.sh)       | ./pyramidForLoop.sh   |  Creates a Pyramid                            |
| [whileloop_example.sh](simple-bash-programs/whileloop_example.sh) | ./whileloop_example.sh|  While Loop Example                           |

### Files-Folder
| FILE                                                             | USAGE                      | DESCRIPTION |
| ---------------------------------------------------------------- | -------------------------- | ----------- |
| [counting-files.sh](/Files-Folder-Programms/counting-files.sh)   | ./counting-files.sh        |  Counts the files in the current working directory                      |
| [date-rename-jpg.sh](/Files-Folder-Programms/date-rename-jpg.sh) | ./date-rename-jpg.sh       |  Prepends the ISO 8601 date to jpg files in the currend directory       |
| [findFile.sh](Files-Folder-Programms/findFile.sh)                | ./findFile.sh \[filename\] |  Finds a file in the current working directory                          |
| [ReadFile.sh](Files-Folder-Programms/ReadFile.sh)                | ./ReadFile.sh              |  Example for outputting a files content's with bash                     |
| [autocompress.sh](autocompress.sh)                               | ./autocompress.sh          |  Compresses files/folders in the current directory into tar.gz archives |

### Text-Utility
| FILE                                                                    | USAGE                                        | DESCRIPTION                                          |
| ----------------------------------------------------------------------- | -------------------------------------------- | -----------                                          |
| [count-lines.sh](Text-Utility/count-lines.sh)                           | ./count-lines \[filepath\]                   | Count Lines in File                                  |
| [letter-frequency-in-file.sh](Text-Utility/letter-frequency-in-file.sh) | ./letter-frequency-in-file.sh \[filepath\]   | Count The Frequency of Every Letters/Word in File    |
| [textReplacement.sh](Text-Utility/textReplacement.sh)                   | ./textReplacement.sh  \[filepath\]           | Replace Texts in Files                               |
| [word-search.sh](Text-Utility/word-search.sh)                           | ./word-search.sh \[word\]                    | Search for Word in Files                             |

### Installation Utilities
| FILE                                                                    | USAGE                                        | DESCRIPTION                                          |
| ----------------------------------------------------------------------- | -------------------------------------------- | -----------                                          |
| [Code_and_Docker_install.sh](Code_and_Docker_install.sh)                | ./Code_and_Docker_install.sh                 | Easily install VSCode, G++ Compiler, or Docker       |
| [lamp-setup.sh](lamp-setup.sh)                                          | ./lamp-setup.sh                              | Easily install and setup the LAMP stack for web dev  |
| [setup-golang.sh](setup-golang.sh)                                      | ./setup-golang.sh  \[version number\]        | Installs the specified version of golang             |

### Command-Line Games
| FILE                                                                    | USAGE                                        | DESCRIPTION              |
| ----------------------------------------------------------------------- | -------------------------------------------- | -----------              |
| [Hangman.sh](Hangman.sh)                                                | ./Hangman.sh                                 | Play Hangman!            |



## License
This project is licensed under the [MIT License](LICENSE.md)