ls *  -File `
| where { $_.Extension -notin @('.gz', '.zip') }`
| where { -not $_.Name.StartsWith('notes') } `
| Compress-Archive -DestinationPath ulctrav.zip -Force