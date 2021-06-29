//
//  ViewController.swift
//  LoginWithAppleTutorial-iOS
//
//  Created by kimhyungyu on 2021/06/29.
//

import UIKit
import AuthenticationServices

class ViewController: UIViewController {

    // MARK: - @IBOutlet Properties
    @IBOutlet weak var loginLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI() {
        loginLabel.text = "Log In"
        
        let appleBtn = ASAuthorizationAppleIDButton(type: .signIn, style: .black)
        appleBtn.addTarget(self, action: #selector(handleAuthorizationAppleIDButtonPress), for: .touchUpInside)
        view.addSubview(appleBtn)
        
        appleBtn.translatesAutoresizingMaskIntoConstraints = false
        appleBtn.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 40).isActive = true
        appleBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

    
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

}

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


extension ViewController: ASAuthorizationControllerPresentationContextProviding{
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window!
    }
    
    
}
