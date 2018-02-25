param($filebase='ulc-trav')

latexmk -pdf "$filebase.tex" -output-directory=aux-latexmk
cp aux-latexmk\*.pdf .
cp aux-latexmk\*.bbl .
cp aux-latexmk\*.toc .
Write-Host "Compressing sources..."
ls *  -File `
| where { $_.Extension -notin @('.gz', '.zip') }`
| where { -not $_.Name.StartsWith('notes') } `
| Compress-Archive -DestinationPath "$filebase.zip" -Force
Write-Host "Source file compressed to $filebase.zip"