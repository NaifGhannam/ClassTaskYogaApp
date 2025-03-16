# YogaApp 

## Overview

YogaApp is a health and wellness app focused on helping users start their journey to a healthier life. This app includes a simple authentication flow for users to log in and create an account. It provides features like email/password authentication and social media sign-in options (Facebook, Google, and Apple). 

The app includes three primary views: `LoginView`, `SignupView`, and `ContentView`, along with an `AuthViewModel` to manage authentication data.

## Features

- **LoginView**: Allows users to log in using their email and password, or social media accounts (Facebook, Google, Apple).
- **SignupView**: Enables users to create a new account by providing their full name, email, password, and confirm password. It also supports social media sign-ups.
- **ContentView**: The main welcome screen of the app, offering navigation options to log in or sign up.

## App Structure

1. **AuthViewModel.swift**  
   - This class manages the user authentication data, such as email, password, full name, and the authentication state (`isAuthenticated`).
   - The `login()` and `signup()` methods are placeholders for the login and signup processes.
   
2. **LoginView.swift**  
   - The login screen where users can input their credentials to log in.
   - It supports email/password login and social media sign-ins through Facebook, Google, and Apple.
   
3. **SignupView.swift**  
   - The sign-up screen for new users to create an account.
   - It includes fields for full name, email, password, and confirm password.
   - Social media sign-up options are also available.

4. **ContentView.swift**  
   - The app's main screen, where users can navigate to either the login or signup screen.
   


## Customization

- You can replace the placeholder images (`welcomeBack`, `SignUpIcon`, `facebook`, `google`, `Apple`, `homeIcon`) with your own images.
- The social media buttons open external URLs. Modify them to integrate actual login functionality if needed.


## Screenshot

![Simulator Screenshot - iPhone 16 Pro - 2025-03-16 at 15 00 40](https://github.com/user-attachments/assets/bb19d07c-596c-43f6-a85d-a3c6679e6c6c)
![Simulator Screenshot - iPhone 16 Pro - 2025-03-16 at 15 00 46](https://github.com/user-attachments/assets/ccef4330-3626-4982-9e63-aac457b56423)
![Simulator Screenshot - iPhone 16 Pro - 2025-03-16 at 15 00 52](https://github.com/user-attachments/assets/f9eea6e7-8010-4678-812a-25db5ae0bd5e)



