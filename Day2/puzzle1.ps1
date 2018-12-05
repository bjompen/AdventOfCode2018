$InputStrings = Get-Content .\Input.txt

$twos = 0
$threes = 0

foreach ($string in $InputStrings) {
    [System.Collections.Generic.List[int]]$Lengths = $string.ToCharArray() | Group-Object | Where-Object -Property Count -gt 1 | Select-Object -ExpandProperty Count -Unique
    if ($Lengths.Contains(2) ) {
        $twos++
    }
    if ($Lengths.Contains(3) ) {
        $threes++
    }
}

$twos * $threes
