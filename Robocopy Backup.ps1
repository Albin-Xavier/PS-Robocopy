# $Folder: Source folder for files being backed up. Needed since by default robocopy doesn't copy source folders, only contents.
# $CleanFolder: $Folder with quotes removed.
Get-Content -Path "$PSScriptRoot\Robocopy Folder List.txt" | ForEach-Object { $Folder= Split-Path -Path $_ -Leaf
$CleanFolder=$Folder.Trim('" ')
robocopy $_ ($PSScriptRoot + "/" + "$CleanFolder") -E -TEE
}