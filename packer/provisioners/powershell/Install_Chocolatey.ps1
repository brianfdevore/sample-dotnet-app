$chocoExePath = 'C:\ProgramData\Chocolatey\bin'

if ($($env:Path).ToLower().Contains($($chocoExePath).ToLower())) {
  echo "Chocolatey found in PATH, skipping install..."
  Exit
}

# Add to system PATH
$systemPath = [Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::Machine)
$systemPath += ';' + $chocoExePath
[Environment]::SetEnvironmentVariable("PATH", $systemPath, [System.EnvironmentVariableTarget]::Machine)

# Update local process' path
$userPath = [Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::User)
if($userPath) {
  $env:Path = $systemPath + ";" + $userPath
} else {
  $env:Path = $systemPath
}

# Run the installer
[system.net.webrequest]::defaultwebproxy = new-object system.net.webproxy('http://teo51ilisdprx01.proxy-forwarding-rule.il4.us-central1.lb.sab-dev-proxy-3608.internal:3128')
[system.net.webrequest]::defaultwebproxy.credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials
[system.net.webrequest]::defaultwebproxy.BypassProxyOnLocal = $true
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))