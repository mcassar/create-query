param([string]$database, [string]$dir);

function create-query ([string]$database,[string]$dir) 
{
    $csv = import-csv $database 
    foreach ($i in $csv )
    { 
        write-host  "CREATE DATABASE $($i.db_name) ON (FILENAME = $($dir)\$($i.db_name).mdf), (FILENAME = $($dir)\$($i.db_name).ldf) FOR ATTACH;`n"
    }
}
