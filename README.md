# sample-dotnet-app
 
JenkinsFile.build Dependencies for Jenkins Windows Agent:

- IIS WebServer
  choco install IIS-WebServer --source windowsfeatures -y

- ASP.NET Core 3.1 Runtime (v3.1.7) - Windows Hosting Bundle Installer
  choco install dotnetcore-windowshosting -y

- DotNet-SDK (for build/run/clean/publish/etc commands)
  choco install dotnetcore-sdk -y

- Powershell installed and Powershell.exe is in PATH so that it can be called anywhere by bat commands

- Google Cloud SDK (including gcloud CLI) for sending artifacts to GCS bucket

- Git (enables Jenkins to clone repo)
  choco install git.install -y

