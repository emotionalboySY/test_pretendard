# test_pretendard

Pretendard 폰트를 Flutter에 적용했을 때 발생하는 오류 보고를 위한 프로젝트입니다.

해당 오류는 [Pretendard Issue](https://github.com/orioncactus/pretendard/issues/177)에 Posting되어 있으며, 아직 해결되지 않은 오류입니다.

<br><br>

## 오류 보고에 활용한 기기 정보
OS: Windows 11 Pro K 24H2

Android Studio Version: Android Studio Ladybug | 2024.2.1 Patch 2 (Build #AI-242.23339.11.2421.12550806, built on October 25, 2024

Flutter Version: 3.24.0 on channel stable

Dart Version: 3.5.0

Android Version: 14(Samsung One UI 6.1)

<br><br>

## 오류 재현 방법

> 여기서는 Android Studio가 설치되어 있고, Flutter SDK가 정상적으로 설치되어 있으며, Android OS가 탑재된 스마트폰 사용을 전제합니다.

1. 테스트를 진행할 기기에서 개발자 모드를 활성화하여야 합니다.
   - 기기 설정 앱에 진입 후, 소프트웨어 정보 페이지로 이동하여 빌드 번호를 5회 연속 터치합니다.
   - 활성화된 개발자 옵션 페이지에 진입하여 USB 디버깅을 활성화 합니다.
   - 이후 컴퓨터에 모바일 기기를 연결하면 Android Studio에서 자동으로 해당 기기를 인식합니다.

1. 이 프로젝트를 다운로드 합니다.

2. Android Studio에서 프로젝트를 엽니다.

3. 화면 상단에 main.dart가 선택되어 있는 지 확인 후, main.dart 좌측에 모바일 기기가 정상적으로 인식되었는지 확인합니다.
   - 여기에서 모바일 기기가 인식된 경우, 해당 기기의 모델명이 표시됩니다.
     - (ex. Samsung Galaxy S24 Ultra인 경우, SH-S928N이 표시됩니다.)

4. main.dart 우측의 실행 버튼을 눌러 애플리케이션을 실행합니다.

5. 실행 후, 아래 영상과 같은 화면이 표시됩니다.
   > static font의 경우 fontWeight 인수가 정상적으로 적용되었는데도 불구, 모두 동일한 굵기로 표시됩니다.
   > 
   > variable font의 경우 굵기 표시는 정상적으로 되지만, 일부 구간에서 폰트가 깨지는 현상이 발생합니다.

https://github.com/user-attachments/assets/002e878d-5b37-4d02-bf42-c0334b578cd7

<br><br>

## 기타 환경에서의 결과

- Web에서 구동하는 경우, Variable 및 static 폰트 모두 정상적으로 표시됩니다.
- Windows에서 구동하는 경우, Variable 및 static 폰트 모두 정상적으로 표시됩니다.
