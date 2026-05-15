$dict = [ordered]@{
  "ðŸ›’" = "🛒"
  "ðŸ””" = "🔔"
  "â€”" = "—"
  "â†’" = "→"
  "â†—" = "↗"
  "â†‘" = "↑"
  "Â©" = "©"
  "â€º" = "›"
  "ðŸŒ¿" = "🌿"
  "ðŸ”’" = "🔒"
  "âœ•" = "✕"
  "âˆ’" = "−"
  "ðŸŒ " = "🌐"
  "â˜…" = "★"
  "âœ…" = "✅"
  "ðŸ“ " = "📍"
  "ðŸšš" = "🚚"
  "ðŸ’³" = "💳"
  "ðŸ ¦" = "🏦"
  "ðŸ“±" = "📱"
  "ðŸ›’" = "🛒"
}

$files = Get-ChildItem -Filter *.html
foreach ($f in $files) {
  $c = Get-Content $f.FullName -Raw -Encoding UTF8
  foreach ($k in $dict.Keys) {
    $c = $c.Replace($k, $dict[$k])
  }
  Set-Content $f.FullName -Value $c -Encoding UTF8
}
