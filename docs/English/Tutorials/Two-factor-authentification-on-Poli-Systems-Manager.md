# Two-factor authentication on the Manager

## What is 2FA?

**[Two-factor authentication](https://en.wikipedia.org/wiki/Two-factor_authentication "Two-factor authentication")** (**2FA**) adds an extra layer of security to your account. The first factor is your password, and the second is a verification code generated on a device or computer. 2FA is conceptually similar to a [security token](https://en.wikipedia.org/wiki/Security_token "Security token") that some banks require for [online banking](https://en.wikipedia.org/wiki/Online_banking "Online banking"). You may also see the terms _OTP_ (_[one-time password](https://en.wikipedia.org/wiki/One-time_password "One-time password")_) and _TOTP_ (_[Time-based One-time Password algorithm](https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm "Time-based One-time Password algorithm")_).

**Source: Wikipedia.**
 

## Apps to configure 2FA

Many applications can generate one-time codes for 2FA. You can use any compatible client; here are a few recommendations:

**PC**

-   [Authy](https://www.authy.com/)
-   [Bitwarden](https://bitwarden.com/)

**Android**

-   [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en)
-   [Authy](https://play.google.com/store/apps/details?id=com.authy.authy&hl=fr_CH&gl=US)
-   [Duo](https://play.google.com/store/apps/details?id=com.duosecurity.duomobile)
-   [Bitwarden](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden&hl=fr_CH&gl=US)

**iOS**

-   [Google Authenticator](https://itunes.apple.com/us/app/google-authenticator/id388497605?mt=8)
-   [Authy](https://apps.apple.com/us/app/twilio-authy/id494168017)
-   [Duo](https://apps.apple.com/us/app/duo-mobile/id422663827)
-   [Bitwarden](https://apps.apple.com/us/app/bitwarden-password-manager/id1137397744)

## Enable 2FA on the Manager

1. [Log in to your Poli Systems Manager account](https://polisystems.ch/manager/index.php?rp=/login).

2. Once logged in, open **Account Security / Your profile**.

   ![Security Settings](https://i.imgur.com/1E14mlv.png)

3. Click **Security Settings** in the right section, then press **Click here to enable**.

   ![Enable 2FA](https://i.imgur.com/G7KgKFo.png)

4. In the **Time Based Tokens** section, select **Get Started >>**.

   ![Time based tokens](https://i.imgur.com/q4QBAOJ.png)

5. Scan the QR code with your preferred app or enter the code manually. Then enter the temporary identification code from the app into **Enter identification code** and press **Submit**.

   *Note: To authenticate from multiple devices, scan the QR code with each device you plan to use.*

   ![QR Code for Authy, Google Authentifcator, and 2FA apps](https://i.imgur.com/UNTkSdE.png)

6. Your 2FA login should now be ready. Keep your backup code in case you lose access to your phone. For maximum security, store it on paper in a safe place.

   ![Enabled 2FA backup code](https://i.imgur.com/4cCEPDI.png)

7. To log in with 2FA, visit the login page, enter your credentials, and press **Login**. When prompted for Two-Factor Authentication, enter the code from your app.

   ![Login page](https://i.imgur.com/G7r0dyf.png)

   ![2FA login](https://i.imgur.com/4xSgLZa.png)

## Disable 2FA on the Manager

1. Return to the **Security Settings** page as described in steps 1 and 2 of "Enable 2FA on the Manager".
2. Press the big red button **Click here to Disable**.

   ![Disable 2FA button](https://i.imgur.com/sAd5uw7.png)
3. Enter your password to disable 2FA and press **Disable Two-Factor Authentication**.

   ![Disable Two-Factor Authenficiation](https://i.imgur.com/5ZaMOld.png)
4. After disabling Two-Factor Authentication you should see the confirmation message.

   ![Disabled Two-Factor Authentification](https://i.imgur.com/Pi9ke52.png)

## Final thoughts

Two-Factor Authentication is important, and we strongly recommend enabling it for your account. It adds another layer of protection and works best alongside a strong password.

We keep our systems secure with measures like captchas on our website, but following best practices for your account is essential. If you run into any issues activating 2FA, please contact us.
