$PROFILE_FILE = "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"

$jokes = @(
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

$joke = $jokes[(Get-Random -Minimum 0 -Maximum $jokes.Length)]

$python_function = @"
function python {
    Write-Host "$joke"
}
"@

$python3_function = @"
function python3 {
    Write-Host "$joke"
}
"@

if (-not (Select-String -Pattern "function python" -Path $PROFILE_FILE)) {
    Add-Content -Path $PROFILE_FILE -Value $python_function
}

if (-not (Select-String -Pattern "function python3" -Path $PROFILE_FILE)) {
    Add-Content -Path $PROFILE_FILE -Value $python3_function
}

. $PROFILE_FILE
