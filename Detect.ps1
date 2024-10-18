$Apps = Get-CimInstance -ClassName Win32_Product | Where-Object {(($_.Name -like "HP Wolf*") `
    -or ($_.Name -like "HP Security*") `
    -or ($_.Name -like "HP Easy Clean*") `
    -or ($_.Name -like "HP Privacy Settings*") `
    -or ($_.Name -like "HP QuickDrop*") `
    -or ($_.Name -like "HP Support Assistant*") `
    -or ($_.Name -like "HP System Information*") `
    -or ($_.Name -like "HP WorkWell*") `
    -or ($_.Name -like "myHP*"))} | Select-Object Name, IdentifyingNumber | Sort-Object Name -Descending
if ($Apps.Count -eq 0) {
    Exit 0
}
else {
    Exit 1
}