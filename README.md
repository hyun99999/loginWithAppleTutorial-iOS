# loginWithAppleTutorial-iOS
π§ Login tutorial using Apple REST API

## 1. Capability μΆκ°

- νλ‘μ νΈμμ Signing & Capabilities μμ Sign in with Apple μΆκ°νλ€.

<img width="400" alt="1" src="https://user-images.githubusercontent.com/69136340/125217915-c2a28980-e2fc-11eb-8c0b-0a2192976531.png">

## 2. Apple Developer μ App ID, Service ID, Key λ±λ‘

- App ID λ₯Ό λ±λ‘ν΄μ€λ€.
- Sign In with Apple μ²΄ν¬ν΄μ€λ€.

<img width="600" alt="2" src="https://user-images.githubusercontent.com/69136340/125217920-c6361080-e2fc-11eb-98ec-c2d3063f1469.png">

- μμ κ°μ΄ Service ID λ λ±λ‘ν΄μ€λ€.

- Key λ λ±λ‘ν΄μ€λ€.

μλ²μμ μκ΅¬νλ κ²λ€μ μΈνν΄μ€λ€. μλμ λ§ν¬μμ apple developer μμ μΈνμμλ€μ΄ μκ°λλ€.

[passport-apple λ‘ μΉμμ μ νλ‘κ·ΈμΈ μ°λ](https://kbjtown.com/2020/07/14/passport-apple-login/)

## 3. λ²νΌ μΆκ°νκΈ°

[Buttons - Sign in with Apple - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple/overview/buttons/)

### Using the System-Provided Buttons

- μμ€νμ΄ μ κ³΅νλ λ²νΌμ ν΅ν΄μ μ°λ¦¬λ λ€μκ³Ό κ°μ μ΄μ μ μ»μ μ μλ€.
1. μ νμ΄ μΉμΈνλ λͺ¨μμ κ°μ§ λ²νΌ
2. style μ λ°κΎΈλλΌλ μ΄μμ μΈ λΉμ¨
3. κΈ°κΈ°μμ μ§μ ν μΈμ΄λ‘ νμ΄νμ μ§μ
4. UI μ μΌμΉνλλ‘ λ²νΌμ corner radius μ§μ
5. VoiceOver κ° λ²νΌμ μ€λͺν  μ μλλ‘ μμ€νμμ μ κ³΅νλ λμ²΄κ°λ₯ νμ€νΈ λ μ΄λΈ

- νλ νΌμ λ°λΌμ μ΅λ 3κ°κΉμ§ `ASAuthorizationAppleIDButton` λ²νΌνμμ ν΅ν΄μ λ€μκ³Ό κ°μ λ²νΌ νμ΄νμ μ¬μ©ν  μ μλ€.(μλλ iOS, macOS, tvOS, and the webμ κ²½μ°. watchOS λ νκ°λ€.)

**ASAuthorizationAppleIDButton.ButtonType**

:signin(default), signup, continue

<img width="600" alt="3" src="https://user-images.githubusercontent.com/69136340/125217952-d64df000-e2fc-11eb-8782-75dffdb3794a.png">

**ASAuthorizationAppleIDButton.Style**

:white, white with an outline, and black

<img width="500" alt="4" src="https://user-images.githubusercontent.com/69136340/125217957-d8b04a00-e2fc-11eb-8ec9-1c6fef3483be.png">

<img width="500" alt="5" src="https://user-images.githubusercontent.com/69136340/125217965-dbab3a80-e2fc-11eb-9ccf-580baa05e51c.png">

<img width="500" alt="6" src="https://user-images.githubusercontent.com/69136340/125217970-df3ec180-e2fc-11eb-8d8c-8a9a51c8a8d2.png">

- κΈ°λ³Έμ μΌλ‘ λ₯κ·Ό λͺ¨μλ¦¬λ₯Ό κ°μ§λ€. μ΄λ corner radius λ‘ μμ ν  μ μλ€.

<img width="700" alt="7" src="https://user-images.githubusercontent.com/69136340/125217979-e239b200-e2fc-11eb-8486-083cf8f62def.png">

### Creating a Custom Sign in with Apple Button

- νμμ λ°λΌμ λ€μκ³Ό κ°μ΄ μ»€μ€ν λ²νΌμ λ§λ€ μ μλ€.

<img width="400" alt="8" src="https://user-images.githubusercontent.com/69136340/125218029-f8e00900-e2fc-11eb-82e8-d39d984c990f.png">

[Apple Design Resources](https://developer.apple.com/design/resources/)

Apple Design Resources μμ λ€μ΄κ°λ₯ν Apple logo artwork λ₯Ό μ κ³΅νλ€.(a logo only or a logo and text)

<img width="400" alt="9" src="https://user-images.githubusercontent.com/69136340/125218034-fbdaf980-e2fc-11eb-889f-9cbd0531aeeb.png">

logo files λ PNG, SVG, PDF ννλ‘ μ¬μ©κ°λ₯νκ³  κ²μ κ³Ό νμ λ²μ μ ν¬ν¨νλ λ²νΌμ νμμ κ°μ§λ€. 

μμ)

<img width="300" alt="10" src="https://user-images.githubusercontent.com/69136340/125218057-039a9e00-e2fd-11eb-8040-943037143d9c.png">

logo artwork λ₯Ό μμ μ κ³΅νλ κ²μμλ§ μ¬μ©ν΄μΌνλ€. μ»€μ€ννκ³  μΆλ€λ©΄ λͺκ°μ§ κ·μΉμ λ°λΌμΌνλ€.

- Use the logo file to position the Apple logo in a button; never use the Apple logo as a button.
- Match the height of the logo file to the height of the button.
- Donβt crop the logo file.
- Donβt add vertical padding.

μμ€νμ΄ μ κ³΅νλ λ²νΌκ³Ό μκ°μ μΌλ‘ μΌμΉνλ €λ©΄ λ€μμ μμ±μ λ³κ²½ν΄μλ μλλ€.

- Titles. Use onlyΒ *Sign in with Apple*,Β *Sign up with Apple*, orΒ *Continue with Apple*.
- General shape. Buttons that combine the logo with text are always rectangular; logo-only buttons can be circular or rectangular.
- Logo and title colors. Within a button, both items must be either black or white; donβt use custom colors.

μ± λμμΈμ λ§κ² λ€μκ³Ό κ°μ λΆλΆμ μμ  κ°λ₯νλ€.

- Title font. You can also adjust the fontβs weight and size.
- Title case. You can capitalize every letter in the title.
- Background appearance. The overall color should remain black or white. If necessary, you can include a subtle texture or gradient to help the button harmonize with your interface.
- Button corner radius. You can use a corner radius value that matches the other buttons in your UI.
- Button bezel and shadow. For example, you can use a stroke to emphasize the button bezel or add a drop shadow.

### Custom Buttons with a Logo and Text
**λ²νΌμ λμ΄μ λ°λΌ logi file νμμ μ νν΄λΌ.** iOS μμ κΆμ₯νλ κΈ°λ³Έ λ²νΌλμ΄μΈ 44ν¬μΈνΈμ κ²½μ°μλ§ PNG νμΌμ μ¬μ©νλ€. logos λ ν¬κΈ°κ° small, medium, large μ¬μ΄μ¦κ° μμΌλκΉ λͺ¨λ  sign-up λ²νΌμ λ§€μΉκ°λ₯νλ€.

**νμ΄νμ μμ€ν ν°νΈλ₯Ό μ νΈν΄λΌ.** λ¬΄μ¨ ν°νΈλ₯Ό μ¬μ©νλλΌλ title κ³Ό custom button μ λμ΄λ system μμ μ¬μ©νλ κ²κ³  λμΌν λΉμ¨μ μ¬μ©ν΄μΌ νλ€. μλ₯Ό λ€μ΄ μμ€ν κΈκΌ΄μ μ¬μ©νλ κ²½μ° μ λͺ©μ κΈκΌ΄ ν¬κΈ°λ λ²νΌ λμ΄μ 43% μ¬μΌ νλ€. μ¦, λ²νΌ λμ΄λ κ°μ₯ κ°κΉμ΄ μ μλ‘ λ°μ¬λ¦Όλ μ λͺ© κΈκΌ΄ ν¬κΈ°μ 233% μ¬μΌ νλ€. λ€μμ μλ‘ λ€λ₯Έ ν¬κΈ°μ μμ€ν κΈκΌ΄μ μ¬μ©νμ¬ λΉμ¨μ λ³΄μ¬μ£Όλ μμμ΄λ€.

<p align="center"><img width="700" alt="αα³αα³αα΅α«αα£αΊ 2021-07-15 αα©αα₯α« 1 51 28" src="https://user-images.githubusercontent.com/69136340/125661413-99cec684-8e29-40f5-bd53-d44b9531227c.png"></p>

**μΌλ°μ μΌλ‘, λλ¬Έμ μ€νμΌμ μ μ§ν΄λΌ.** κΈ°λ³Έμ μΌλ‘ λͺ¨λ  λ²νΌμ Sign λλ Continue μ κ°μ μ²«λ²μ§Έ λ¨μ΄μ Apple μ λλ¬Έμ νμνλ€. λ€λ₯Έ λͺ¨λ  λ¬Έμλ μλ¬Έμμ΄λ€.

**λ²νΌ λ΄μμ tile κ³Ό logo λ μμ§ μ λ ¬.** λ¨Όμ  title μ κ°μ΄λ°μ μμ§μ λ ¬νκ³ , logo image λ₯Ό μΆκ°νμ¬ λμ΄κ° λ²νΌ λμ΄μ μΌμΉνλ νμΈνλ€. logo image κ° μλ¨, νλ¨ ν¨λ©μ΄ ν¬ν¨λμμμΌλ‘ μ λͺ©μ μΈλ‘λ‘ μ λ ¬νλ©΄ μ¬λ°λ₯΄κ² μ λ ¬λ μνλ₯Ό μ μ§ κ°λ₯νλ€.

**νμν κ²½μ° logo λ₯Ό μ½μν΄λΌ.** Apple logo λ₯Ό λ€λ₯Έ μΈμ¦λ‘κ³ μ μνμΌλ‘ μ λ ¬ν΄μΌ νλ κ²½μ° logo μ button μμͺ½ leading edge μ¬μ΄μ κ³΅κ°μ μ‘°μ ν  μ μλ€.

**title κ³Ό button μ right edge μ μ¬λ°±μ μ΅μνμΌλ‘ μ μ§ν΄λΌ.** μ¬λ°±μ λ²νΌ λλΉμΌ μ΅μ 8% λ₯Ό μΈ‘μ ν΄μΌ νλ€.

**μ΅μ button μ¬μ΄μ¦μ button μ£Όλ³ μ¬λ°±μ μ μ§ν΄λΌ.** button title μ locale μ λ°λΌμ κΈΈμ΄κ° λ¬λΌμ§ μ μλ€. λ€μ κ°μ μ§μΉ¨μΌλ‘ μ¬μ©ν΄λΌ.
<p align="center">
<img width="643" alt="αα³αα³αα΅α«αα£αΊ 2021-07-15 αα©αα₯α« 2 17 32" src="https://user-images.githubusercontent.com/69136340/125664708-cd5550f4-66bd-44aa-90e6-c1f6ea6f1825.png"></p>


### Custom Logo-Only Buttons

**λ²νΌ ν¬κΈ°μ λ°λΌμ λ‘κ³  νμΌμ νμμ μ ννλ€.** λͺ¨λ  ν¬κΈ°μ λ²νΌμ λ²‘ν° κΈ°λ° SVG λ° PDF νμμ μ¬μ©νλ€. 44x44pt ν¬κΈ°μ λ²νΌμμλ§ PNG νμμ μ¬μ©νλ€.

**logo-only μ΄λ―Έμ§μ κ°λ‘ μ¬λ°±μ μΆκ°νμ§ μλλ€**. logo-only λ²νΌμ ν­μ 1λ1 λΉμ¨μ΄μ΄μΌ νλ€. κ·Έλ¦¬κ³  μ΄λ―Έ λͺ¨λ λ©΄μ μ¬λ°λ₯Έ μ¬λ°±μ΄ λ€μ΄κ° μλ€.

**mask λ₯Ό μ¬μ©ν΄μ κΈ°λ³Έ μ μ¬κ°ν μ΄λ―Έμ§λ₯Ό λ³κ²½νλ€.** λ§μ½μ λκ° λ₯κ·Ό λ²νΌμ μνλ€λ©΄ built-in padding μ μ€μ΄κ±°λ λ‘κ³  μμ²΄λ₯Ό μ¬μ©νκΈ° μν΄μ μλ₯΄κ±°λ μΆκ° ν¨λ©μ λ£μ§ μλλ€.

<img width="600" alt="11" src="https://user-images.githubusercontent.com/69136340/125218100-2af16b00-e2fd-11eb-8622-4e5fc1dff351.png">

**λ²νΌ μ£Όμμ μ΅μνμ μ¬λ°±μ μ μ§νλ€.** μ¬λ°±μ λ²νΌ λμ΄μ 1/10 μ΄μμ΄μ΄μΌν©λλ€.

## 4. Apple login λ²νΌ μΆκ° λ° μ°½ λμ°κΈ°

<img src ="https://user-images.githubusercontent.com/69136340/125218107-2dec5b80-e2fd-11eb-82ef-961125b64641.png" width = "250">

<img src ="https://user-images.githubusercontent.com/69136340/125218111-317fe280-e2fd-11eb-8fd2-259bb8422c12.png" width = "250">

- System-Provided Buttons μΆκ°

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

- handleAuthorizationAppleIDButtonPress() κ΅¬ν

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

- μΆλ ₯ν΄λ³Ό μ μλ λ΄μ© μΆλ ₯!

<img src ="https://user-images.githubusercontent.com/69136340/125218160-4bb9c080-e2fd-11eb-8335-36b9487f5c02.png" width = "800">

- λλ²μ§Έλ‘ λ‘κ·ΈμΈμ νκ²λλ©΄ μ΄λ―Έ νμκ°μμ νκΈ° λλ¬Έμ fullname κ³Ό email μ λΉκ°μ΄ λμ΄μ¨λ€.

<img src ="https://user-images.githubusercontent.com/69136340/125218168-4f4d4780-e2fd-11eb-97db-0d1310ae0593.png" width = "800">

- λλ userIdentifier λ₯Ό μ΄μ©ν΄μ μλ²λ‘λΆν° μμ²΄ accessTokenμ λ°λλ‘ νμλ€.

## 5. AppDelegate μμ λ‘κ·ΈμΈ λΆκΈ°μ²λ¦¬

- μ±μ μ€νν  κ²½μ° μ¬μ©μ€λ¨ λΆκΈ°μ²λ¦¬

```swift

    // μ±μ μ€νν  κ²½μ° μ¬μ©μ€λ¨ λΆκΈ°μ²λ¦¬
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        appleIDProvider.getCredentialState(forUserID: "001628.1f39bf3727b44f1f8a6615166ae3b718.0924") { (credentialState, error) in
            switch credentialState {
            
            case .revoked:
                // Apple ID μ¬μ© μ€λ¨ κ²½μ°.
                // λ‘κ·Έμμ
                print("revoked")
                print("go to login")
            case .authorized:
                print("authorized")
                print("go to home")
            case .notFound:
                // μλͺ»λ useridentifier λ‘ credentialState λ₯Ό μ‘°ννκ±°λ μ νλ‘κ·ΈμΈ μμ€νμ λ¬Έμ κ° μμ λ
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

- background μ μ±μ΄ λ΄λ €κ° μλ κ²½μ° μ¬μ©μ€λ¨ λΆκΈ°μ²λ¦¬

```swift
// background μ μ±μ΄ λ΄λ €κ° μλ κ²½μ° μ¬μ©μ€λ¨ λΆκΈ°μ²λ¦¬
    func applicationDidBecomeActive(_ application: UIApplication) {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        appleIDProvider.getCredentialState(forUserID: "001628.1f39bf3727b44f1f8a6615166ae3b718.0924") { (credentialState, error) in
            switch credentialState {
            
            case .revoked:
                // Apple ID μ¬μ© μ€λ¨ κ²½μ°.
                // λ‘κ·Έμμ
                print("revoked")
                print("go to login")
            case .authorized:
                print("authorized")
                print("go to home")
            case .notFound:
                // μλͺ»λ useridentifier λ‘ credentialState λ₯Ό μ‘°ννκ±°λ μ νλ‘κ·ΈμΈ μμ€νμ λ¬Έμ κ° μμ λ
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

aplle login manager λ₯Ό λ§λ€μ΄μ ν΅ν©μ μΌλ‘ κ΄λ¦¬ν  μλ μλ€.

[iOS Sign In with Apple μ μ©νκΈ°](http://labs.brandi.co.kr/2021/04/09/chosh.html)

---

### μΆμ²

[iOS Sign In with Apple μ μ©νκΈ°](http://labs.brandi.co.kr/2021/04/09/chosh.html)

[Buttons - Sign in with Apple - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple/overview/buttons/)

[[Swift] - Apple Login (2/2)](https://nsios.tistory.com/41)
