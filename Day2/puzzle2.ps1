$InputStrings = Get-Content .\Input.txt | sort

foreach ($string in $InputStrings) { 
    $str1 = $string.ToCharArray()
        
    0..($InputStrings.Length - 1) | ForEach {
        
        $str2 = $InputStrings[$_].ToCharArray()
        
        if ( (Compare-Object $str1 $str2 -SyncWindow 0).count -eq 2) {
            -join ((Compare-Object $str1 $str2 -SyncWindow 0 -IncludeEqual -ExcludeDifferent).InputObject)
            break
        }
    
    }
}