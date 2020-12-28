Import-Module posh-git
$GitPromptSettings.DefaultPromptSuffix = $('`n> ' * ($nestedPromptLevel + 1))
function prompt {
    # Your non-prompt logic here
    $prompt = Write-Prompt "PS:"
    $prompt += Write-Prompt "[$(Get-Date -f 'yyyy-MM-ddThh:mm:ss')] " -ForegroundColor ([ConsoleColor]::DarkBlue)
    $prompt += & $GitPromptScriptBlock
    if ($prompt) { "$prompt" } else { " " }
}
