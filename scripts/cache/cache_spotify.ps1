<# 
Nombre: Borrar caché de Spotify.

Descripción: el script borra el caché desactualizado de la música escuchada en Spotify.
Se activa cada vez que cierra completamente el cliente (si el cliente se minimizó en la bandeja, el script no funcionará).

Para la carpeta APPDATA\Spotify\Data, la regla es que todos los archivos de caché que no se utilizan
por el cliente más que el número especificado de días serán eliminados.

#>

$day = 7 # Número de días después de los cuales la memoria caché se considera obsoleta

# Borre la carpeta \Data si encuentra un caché desactualizado

try {
    If (!(Test-Path -Path $env:LOCALAPPDATA\Spotify\Data)) {
        "$(Get-Date -Format "dd/MM/yyyy HH:mm:ss") Folder Local\Spotify\Data not found" | Out-File log.txt -append
        exit	
    }
    $check = Get-ChildItem $env:LOCALAPPDATA\Spotify\Data -File -Recurse | Where-Object lastaccesstime -lt (get-date).AddDays(-$day)
    if ($check.Length -ge 1) {

        $count = $check
        $sum = $count | Measure-Object -Property Length -sum
        if ($sum.Sum -ge 1044344824) {
            $gb = "{0:N2} Gb" -f (($check | Measure-Object Length -s).sum / 1Gb)
            "$(Get-Date -Format "dd/MM/yyyy HH:mm:ss") Removed $gb obsolete cache" | Out-File log.txt -append
        }
        else {
            $mb = "{0:N2} Mb" -f (($check | Measure-Object Length -s).sum / 1Mb)
            "$(Get-Date -Format "dd/MM/yyyy HH:mm:ss") Removed $mb obsolete cache" | Out-File log.txt -append
        }
        Get-ChildItem $env:LOCALAPPDATA\Spotify\Data -File -Recurse | Where-Object lastaccesstime -lt (get-date).AddDays(-$day) | Remove-Item
    }
    if ($check.Length -lt 1) {
        "$(Get-Date -Format "dd/MM/yyyy HH:mm:ss") Stale cache not found" | Out-File log.txt -append
    }   
}
catch {
    "$(Get-Date -Format "dd/MM/yyyy HH:mm:ss") $error[0].Exception" | Out-File log.txt -append
}
exit