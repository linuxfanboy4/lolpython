# LOLPython

**LOLPython** is a humorous script designed to intercept Python and Python3 commands and respond with a random programming joke. It's an excellent way to lighten up your command line experience with a bit of fun and laughter.

## Features

- Hijacked `python` and `python3` commands.
- Display a random programming joke from a predefined list.
- Easy installation and setup on various operating systems.

## Installation

### Linux (Bash)

1. Download the script:
```bash
wget https://raw.githubusercontent.com/linuxfanboy4/lolpython/refs/heads/main/src/lolpython-for-bash.sh
```
2. Run the script:
```bash
bash lolpython-for-bash.sh
```

### MacOS (Zsh)

1. Download the script:
```zsh
wget https://raw.githubusercontent.com/linuxfanboy4/lolpython/refs/heads/main/src/lolpython-for-zsh.sh
```
2. Run the script:
```zsh
zsh lolpython-for-zsh.sh
```

### Windows (PowerShell)

1. Download the script from the following URL:
[https://github.com/linuxfanboy4/lolpython/blob/main/src/lolpython-for-powershell.ps1](https://github.com/linuxfanboy4/lolpython/blob/main/src/lolpython-for-powershell.ps1)

2. Run the script in PowerShell.

## How it works

The script adds functions `python` and `python3` to your `.bashrc` or `.zshrc` file (depending on your shell), which print a random programming joke every time you try to run the Python interpreter. The jokes are stored in an array, and a random joke is selected and displayed.

```bash
#!/bin/bash

BASHRC_FILE="$HOME/.bashrc"

JOKES=(
  "Why don't Python programmers like nature? Because it has too many bugs!"
  "Why did the Python developer break up with their partner? They couldn’t find the right class!"
  "I told my computer I needed a break, and it froze."
  "Why did the function go to therapy? It had too many arguments."
  "Python is the only language that is both serpentine and friendly."
  "Why don’t programmers like to go outside? The bugs are worse there."
  "There are only two hard things in programming: cache invalidation and naming things."
  "Why do Python programmers prefer dark mode? Because the light attracts bugs!"
  "A SQL query walks into a bar, walks up to two tables and asks, 'Can I join you?'"
  "Why did the Python programmer get stuck in the elevator? They forgot to `import lift`."
  "Why don't Java developers wear glasses? Because they can’t C#!"
  "I’m not arguing, I’m just explaining why I’m right... in Python."
  "Why do JavaScript developers prefer to avoid nature walks? Too many callbacks."
  "How many programmers does it take to change a light bulb? None, that's a hardware issue!"
)

JOKE=${JOKES[$RANDOM % ${#JOKES[@]}]}

## Muhahahahah Killing Python and Python3
if ! grep -q "function python()" "$BASHRC_FILE"; then
  echo "
  function python() {
    echo \"$JOKE\"
  }
  " >> "$BASHRC_FILE"
fi

if ! grep -q "function python3()" "$BASHRC_FILE"; then
  echo "
  function python3() {
    echo \"$JOKE\"
  }
  " >> "$BASHRC_FILE"
fi

source "$BASHRC_FILE" > /dev/null 2>&1
```

## Contributions

Contributions are welcome! Feel free to fork the repository and submit pull requests with new jokes, bug fixes, or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
