1. Chocolatey (https://chocolatey.org/) 관리자 권한으로 실행
    - Get-ExecutionPolicy
    - Set-ExecutionPolicy Bypass -Scope Process (Restricted 출력시 입력)
    - Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   
2. Choloatey list
    - choco install amd-ryzen-chipset
    - choco install nvidia-app
    - choco install powershell-core
    - choco install firefox
    - choco install firefox-dev --pre
    - choco install intellijidea-ultimate
    - choco install vscode
    - choco install docker-desktop
    - choco install postman
    - choco install discord
    - choco install steam
    - choco install logitech-options
    - choco install kakaotalk
    - choco install bandizip
    - choco install potplayer
    - choco install equalizerapo

3. Adguard (https://adguard.com/ko/welcome.html)

4. SMSL DAC driver (https://www.smsl-audio.com/portal/product/downlist/id/11.html)
