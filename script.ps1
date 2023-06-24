Get-Content .\forgehref.tmp2 | % {$_ -replace "<","" -replace ">","" -replace "bra ","set " -replace "  ","" -replace "(Direct Download)/a",""} |Out-File .\forgehref.tmp
