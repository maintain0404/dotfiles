# Windows에서 사용 시 dotfiles 세팅 전 수동으로 해야 할 설정

## Windows 터미널 설치
Microsoft Store에서 Window Terminal 검색 후 설치

## 가상화 사용 설정
참고 = https://learn.microsoft.com/ko-kr/windows/wsl/install-manual

1. WSL, TableCloth를 쓰기 위해서 bios에서 가상화 사용 설정을 dotfiles 설정 전 해야 함. 부팅 시 del, F12, F1, F2 중 하나(컴퓨터마다 다른 듯)를 누르고 bios 진입
    - ASUS : Bios -> CPU Configuration -> Advanced Mode -> Intel Virtualization Technology(인텔 CPU0) 혹은 SVM Mode(AMD CPU)를 Enabled
2. 재부팅
3. 제어판 -> 프로그램 및 기능 -> Windows 기능 켜기/끄기 로 진입해서 Hyper-V, Linux용 Windows 하위 시스템, 가상머신 플랫폼 활성화 활성화
    - 혹은 Powershell을 관리자 권한으로 실행해서 아래 명령어 실행
    ```powershell
    # WSL 활성화
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    
    # 가상머신 플랫폼 활성화
    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

    # Hyper-V 활성화
    dism.exe /online /enable-feature /featurename:Microsoft-Hyper-V /all
    ```
    - Hyper-V는 TableCloth용
4. 재부팅
5. [여기](https://learn.microsoft.com/ko-kr/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)에서 CPU에 맞는 커널 업데이트 패키지 설치
6. WSL2를 기본 버전으로 설정
```powershell
wsl --set-default-version 2
```
7. Linux 배포판 설치
    - Microsoft Store에서 원하는 배포판 검색 후 설치
    - Microsoft Store에서 WSL GUI 앱을 설치해서 GUI로 배포판 여럿 관리할 수 있음

## zsh 설치
WSL 실행 후 셸 진입해서 아래 명령어 실행
```sh
sudo apt install -y zsh  # zsh 설치
chsh -s "$(which zsh)"  # 기본 셸 zsh로 바꾸기
```