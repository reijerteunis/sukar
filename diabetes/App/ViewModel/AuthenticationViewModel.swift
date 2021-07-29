//
//  AuthenticationViewModel.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 28/07/2021.
//

import Foundation
import Firebase
import GoogleSignIn

class AuthenticationViewModel: NSObject, ObservableObject {
    // Create an enum SignInState to define the sign-in and sign-out state for Google Sign-In.
    enum SignInState {
        case signedIn
        case signedOut
    }
    
    // Create a @Published variable to manage the authentication state.
    @Published var state: SignInState = .signedOut
    
    // Set up the Google Sign-In function when we initialize the class.
    override init() {
        super.init()
        
        setupGoogleSignIn()
    }
    
    // Write a signIn() method that shows the Google Sign-In screen as a model.
    func signIn() {
        if GIDSignIn.sharedInstance().currentUser == nil {
            GIDSignIn.sharedInstance().presentingViewController = UIApplication.shared.windows.first?.rootViewController
            GIDSignIn.sharedInstance().signIn()
        }
    }
    
    // Similar to the process above, we call the signOut() method.
    func signOut() {
        GIDSignIn.sharedInstance().signOut()

        do {
            try Auth.auth().signOut()

            state = .signedOut
        } catch let signOutError as NSError {
            print(signOutError.localizedDescription)
        }
    }
    
    // Set the delegate of GIDSignIn to self so that AuthenticationViewModel receives the update from this class.
    private func setupGoogleSignIn() {
        GIDSignIn.sharedInstance().delegate = self
    }
}

extension AuthenticationViewModel: GIDSignInDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error == nil {
            firebaseAuthentication(withUser: user)
        } else {
            print(error.debugDescription)
        }
    }
    
    private func firebaseAuthentication(withUser user: GIDGoogleUser) {
        if let authentication = user.authentication {
            let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)

            Auth.auth().signIn(with: credential) { (_, error) in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    self.state = .signedIn
                }
            }
        }
    }
}
