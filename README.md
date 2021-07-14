# loginWithAppleTutorial-iOS
🧃 Login tutorial using Apple REST API

## 1. Capability 추가

- 프로젝트에서 Signing & Capabilities 에서 Sign in with Apple 추가한다.

<img width="400" alt="1" src="https://user-images.githubusercontent.com/69136340/125217915-c2a28980-e2fc-11eb-8c0b-0a2192976531.png">

## 2. Apple Developer 에 App ID, Service ID, Key 등록

- App ID 를 등록해준다.
- Sign In with Apple 체크해준다.

<img width="600" alt="2" src="https://user-images.githubusercontent.com/69136340/125217920-c6361080-e2fc-11eb-98ec-c2d3063f1469.png">

- 위와 같이 Service ID 도 등록해준다.

- Key 도 등록해준다.

서버에서 요구하는 것들을 세팅해준다. 아래의 링크에서 apple developer 에서 세팅요소들이 소개된다.

[passport-apple 로 웹에서 애플로그인 연동](https://kbjtown.com/2020/07/14/passport-apple-login/)

## 3. 버튼 추가하기

[Buttons - Sign in with Apple - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple/overview/buttons/)

### Using the System-Provided Buttons

- 시스템이 제공하는 버튼을 통해서 우리는 다음과 같은 이점을 얻을 수 있다.
1. 애플이 승인하는 모양을 가진 버튼
2. style 을 바꾸더라도 이상적인 비율
3. 기기에서 지정한 언어로 타이틀을 지원
4. UI 와 일치하도록 버튼의 corner radius 지원
5. VoiceOver 가 버튼을 설명할 수 있도록 시스템에서 제공하는 대체가능 텍스트 레이블

- 플렛폼에 따라서 최대 3개까지 `ASAuthorizationAppleIDButton` 버튼타입을 통해서 다음과 같은 버튼 타이틀을 사용할 수 있다.(아래는 iOS, macOS, tvOS, and the web의 경우. watchOS 는 한개다.)

**ASAuthorizationAppleIDButton.ButtonType**

:signin(default), signup, continue

<img width="600" alt="3" src="https://user-images.githubusercontent.com/69136340/125217952-d64df000-e2fc-11eb-8782-75dffdb3794a.png">

**ASAuthorizationAppleIDButton.Style**

:white, white with an outline, and black

<img width="500" alt="4" src="https://user-images.githubusercontent.com/69136340/125217957-d8b04a00-e2fc-11eb-8ec9-1c6fef3483be.png">

<img width="500" alt="5" src="https://user-images.githubusercontent.com/69136340/125217965-dbab3a80-e2fc-11eb-9ccf-580baa05e51c.png">

<img width="500" alt="6" src="https://user-images.githubusercontent.com/69136340/125217970-df3ec180-e2fc-11eb-8d8c-8a9a51c8a8d2.png">

- 기본적으로 둥근 모서리를 가진다. 이는 corner radius 로 수정할 수 있다.

<img width="700" alt="7" src="https://user-images.githubusercontent.com/69136340/125217979-e239b200-e2fc-11eb-8486-083cf8f62def.png">

### Creating a Custom Sign in with Apple Button

- 필요에 따라서 다음과 같이 커스텀 버튼을 만들 수 있다.

<img width="400" alt="8" src="https://user-images.githubusercontent.com/69136340/125218029-f8e00900-e2fc-11eb-82e8-d39d984c990f.png">

[Apple Design Resources](https://developer.apple.com/design/resources/)

Apple Design Resources 에서 다운가능한 Apple logo artwork 를 제공한다.(a logo only or a logo and text)

<img width="400" alt="9" src="https://user-images.githubusercontent.com/69136340/125218034-fbdaf980-e2fc-11eb-889f-9cbd0531aeeb.png">

logo files 는 PNG, SVG, PDF 형태로 사용가능하고 검정과 하양 버전을 포함하는 버튼의 타입을 가진다. 

예시)

<img width="300" alt="10" src="https://user-images.githubusercontent.com/69136340/125218057-039a9e00-e2fd-11eb-8040-943037143d9c.png">

logo artwork 를 위의 제공하는 것에서만 사용해야한다. 커스텀하고 싶다면 몇가지 규칙을 따라야한다.

- Use the logo file to position the Apple logo in a button; never use the Apple logo as a button.
- Match the height of the logo file to the height of the button.
- Don’t crop the logo file.
- Don’t add vertical padding.

시스템이 제공하는 버튼과 시각적으로 일치하려면 다음의 속성은 변경해서는 안된다.

- Titles. Use only *Sign in with Apple*, *Sign up with Apple*, or *Continue with Apple*.
- General shape. Buttons that combine the logo with text are always rectangular; logo-only buttons can be circular or rectangular.
- Logo and title colors. Within a button, both items must be either black or white; don’t use custom colors.

앱 디자인에 맞게 다음과 같은 부분은 수정 가능하다.

- Title font. You can also adjust the font’s weight and size.
- Title case. You can capitalize every letter in the title.
- Background appearance. The overall color should remain black or white. If necessary, you can include a subtle texture or gradient to help the button harmonize with your interface.
- Button corner radius. You can use a corner radius value that matches the other buttons in your UI.
- Button bezel and shadow. For example, you can use a stroke to emphasize the button bezel or add a drop shadow.

### Custom Buttons with a Logo and Text
**버튼의 높이에 따라 logi file 형식을 선택해라.** iOS 에서 권장하는 기본 버튼높이인 44포인트의 경우에만 PNG 파일을 사용한다. logos 는 크기가 small, medium, large 사이즈가 있으니까 모든 sign-up 버튼에 매치가능하다.

**타이틀에 시스템 폰트를 선호해라.** 무슨 폰트를 사용하더라도 title 과 custom button 의 높이는 system 에서 사용하는 것고 동일한 비율을 사용해야 한다. 예를 들어 시스템 글꼴을 사용하는 경우 제목의 글꼴 크기는 버튼 높이의 43% 여야 한다. 즉, 버튼 높이는 가장 가까운 정수로 반올림된 제목 글꼴 크기의 233% 여야 한다. 다음은 서로 다른 크기의 시스템 글꼴을 사용하여 비율을 보여주는 예시이다.

<p align="center"><img width="700" alt="스크린샷 2021-07-15 오전 1 51 28" src="https://user-images.githubusercontent.com/69136340/125661413-99cec684-8e29-40f5-bd53-d44b9531227c.png"></p>

**일반적으로, 대문자 스타일을 유지해라.** 기본적으로 모든 버튼의 Sign 또는 Continue 와 같은 첫번째 단어와 Apple 을 대문잘 표시한다. 다른 모든 문자는 소문자이다.

**버튼 내에서 tile 과 logo 는 수직 정렬.** 먼저 title 을 가운데에 수직정렬하고, logo image 를 추가하여 높이가 버튼 높이와 일치하는 확인한다. logo image 가 상단, 하단 패딩이 포함되었음으로 제목을 세로로 정렬하면 올바르게 정렬되 상태를 유지 가능하다.

**필요한 경우 logo 를 삽입해라.** Apple logo 를 다른 인증로고와 수평으로 정렬해야 하는 경우 logo 와 button 앞쪽 leading edge 사이의 공간을 조정할 수 있다.

**title 과 button 의 right edge 의 여백을 최소한으로 유지해라.** 여백은 버튼 너비으 최소 8% 를 측정해야 한다.

**최소 button 사이즈와 button 주변 여백을 유지해라.** button title 은 locale 에 따라서 길이가 달라질 수 있다. 다음 값을 지침으로 사용해라.
<p align="center">
<img width="643" alt="스크린샷 2021-07-15 오전 2 17 32" src="https://user-images.githubusercontent.com/69136340/125664708-cd5550f4-66bd-44aa-90e6-c1f6ea6f1825.png"></p>


### Custom Logo-Only Buttons

**버튼 크기에 따라서 로고 파일의 형식을 선택한다.** 모든 크기의 버튼에 벡터 기반 SVG 및 PDF 형식을 사용한다. 44x44pt 크기의 버튼에서만 PNG 형식을 사용한다.

**logo-only 이미지에 가로 여백을 추가하지 않는다**. logo-only 버튼은 항상 1대1 비율이어야 한다. 그리고 이미 모든면에 올바른 여백이 들어가 있다.

**mask 를 사용해서 기본 정사각형 이미지를 변경한다.** 만약에 너가 둥근 버튼을 원한다면 built-in padding 을 줄이거나 로고 자체를 사용하기 위해서 자르거나 추가 패딩을 넣지 않는다.

<img width="600" alt="11" src="https://user-images.githubusercontent.com/69136340/125218100-2af16b00-e2fd-11eb-8622-4e5fc1dff351.png">

**버튼 주위에 최소한의 여백을 유지한다.** 여백은 버튼 높이의 1/10 이상이어야합니다.

## 4. Apple login 버튼 추가 및 창 띄우기

<img src ="https://user-images.githubusercontent.com/69136340/125218107-2dec5b80-e2fd-11eb-82ef-961125b64641.png" width = "250">

<img src ="https://user-images.githubusercontent.com/69136340/125218111-317fe280-e2fd-11eb-8fd2-259bb8422c12.png" width = "250">

- System-Provided Buttons 추가

```swift
func setUI() {
        let appleBtn = ASAuthorizationAppleIDButton(type: .signIn, style: .black)
        appleBtn.addTarget(self, action: #selector(handleAuthorizationAppleIDButtonPress), for: .touchUpInside)
        view.addSubview(appleBtn)
        
        appleBtn.translatesAutoresizingMaskIntoConstraints = false
        appleBtn.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 40).isActive = true
        appleBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
```

- handleAuthorizationAppleIDButtonPress() 구현

```swift
@objc
    func handleAuthorizationAppleIDButtonPress() {
        print("try login with apple")
        
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let reqeust = appleIDProvider.createRequest()
        reqeust.requestedScopes = [.fullName, .email]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [reqeust])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
        
    }
```

- delegate

```swift
extension ViewController: ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        switch authorization.credential {
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            
            // Create an account in your system.
            let userIdentifier = appleIDCredential.user
            let fullName = appleIDCredential.fullName
            let email = appleIDCredential.email
            
            if let authorizationCode = appleIDCredential.authorizationCode,
               let identityToken = appleIDCredential.identityToken,
               let authString = String(data: authorizationCode, encoding: .utf8),
               let tokenString = String(data: identityToken, encoding: .utf8) {
                print("authorizationCode: \(authorizationCode)")
                print("identityToken: \(identityToken)")
                print("authString: \(authString)")
                print("tokenString: \(tokenString)")
                
            }
            print("useridentifier: \(userIdentifier)")
            print("fullName: \(fullName)")
            print("email: \(email)")
        
        case let passwordCredential as ASPasswordCredential:
        
            // Sign in using an existing iCloud Keychain credential.
            let username = passwordCredential.user
            let password = passwordCredential.password
            
            print("username: \(username)")
            print("password: \(password)")
            
        default:
            break
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        // Handle error.
        print("login error")
    }
}
```

- 출력해볼 수 있는 내용 출력!

<img src ="https://user-images.githubusercontent.com/69136340/125218160-4bb9c080-e2fd-11eb-8335-36b9487f5c02.png" width = "800">

- 두번째로 로그인을 하게되면 이미 회원가입을 했기 때문에 fullname 과 email 은 빈값이 넘어온다.

<img src ="https://user-images.githubusercontent.com/69136340/125218168-4f4d4780-e2fd-11eb-97db-0d1310ae0593.png" width = "800">

- 나는 userIdentifier 를 이용해서 서버로부터 자체 accessToken을 받도록 하였다.

## 5. AppDelegate 에서 로그인 분기처리

- 앱을 실행할 경우 사용중단 분기처리

```swift

    // 앱을 실행할 경우 사용중단 분기처리
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        appleIDProvider.getCredentialState(forUserID: "001628.1f39bf3727b44f1f8a6615166ae3b718.0924") { (credentialState, error) in
            switch credentialState {
            
            case .revoked:
                // Apple ID 사용 중단 경우.
                // 로그아웃
                print("revoked")
                print("go to login")
            case .authorized:
                print("authorized")
                print("go to home")
            case .notFound:
                // 잘못된 useridentifier 로 credentialState 를 조회하거나 애플로그인 시스템에 문제가 있을 때
                print("notFound")
                print("go to login")
            @unknown default:
                print("default")
                print("go to login")
            }
        }
        
        return true
    }
```

- background 에 앱이 내려가 있는 경우 사용중단 분기처리

```swift
// background 에 앱이 내려가 있는 경우 사용중단 분기처리
    func applicationDidBecomeActive(_ application: UIApplication) {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        appleIDProvider.getCredentialState(forUserID: "001628.1f39bf3727b44f1f8a6615166ae3b718.0924") { (credentialState, error) in
            switch credentialState {
            
            case .revoked:
                // Apple ID 사용 중단 경우.
                // 로그아웃
                print("revoked")
                print("go to login")
            case .authorized:
                print("authorized")
                print("go to home")
            case .notFound:
                // 잘못된 useridentifier 로 credentialState 를 조회하거나 애플로그인 시스템에 문제가 있을 때
                print("notFound")
                print("go to login")
            @unknown default:
                print("default")
                print("go to login")
            }
        }
    }
```
---

aplle login manager 를 만들어서 통합적으로 관리할 수도 있다.

[iOS Sign In with Apple 적용하기](http://labs.brandi.co.kr/2021/04/09/chosh.html)

---

### 출처

[iOS Sign In with Apple 적용하기](http://labs.brandi.co.kr/2021/04/09/chosh.html)

[Buttons - Sign in with Apple - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple/overview/buttons/)

[[Swift] - Apple Login (2/2)](https://nsios.tistory.com/41)
