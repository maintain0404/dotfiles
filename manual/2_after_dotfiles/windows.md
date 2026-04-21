# Windows에서 사용 시 dotfiles 세팅 후 수동으로 해야 할 설정

## TableCloth용 재부팅
TableCloth 설치 후 최초 셋업 시 재부팅 필요함.

## WSL 내부에 크롬 설치

Windows10 기준 WSL 내부에서 Windows 크롬을 사용하는 것은 불가능하므로 WSL 내부에 설치 필요. Windows11은 [Mirror networking mode](https://learn.microsoft.com/en-us/windows/wsl/networking#mirrored-mode-networking)를 활성화하면 가능. [ChromeDevTools의공식 가이드]((https://github.com/ChromeDevTools/chrome-devtools-mcp/blob/main/docs/troubleshooting.md#wsl))

```bash
# 설치 스크립트

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Password and prompt yes is required.
sudo apt install fonts-liberation libu2f-udev xdg-utils
​
sudo dpkg -i google-chrome-stable_current_amd64.deb

# execute 
google-chrome

# 설치 완료 후 삭제
rm google-chrome-stable_current_amd64.deb
```
