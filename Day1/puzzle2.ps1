$PuzzleInput = Get-Content .\Input.txt
$sum = 0
$res = [System.Collections.Generic.List[int]]::New()
$end = $false

do { 
    foreach ($a in $PuzzleInput) { 
        $sum += $a
        if ($res.Contains($Sum)) {
            $end = $true
            return $sum
        }
        $null = $res.Add($sum)
    }
} until ($end -eq $true)
