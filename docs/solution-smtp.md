# SMTP

With lots of users' practice and feedback, the most recommended way is using the **third-party SMTP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it has great difficulty in maintenance.

Taking **SendGrid's SMTP Service** as an example, refer to the following steps to configure sending mail for Nextcloud:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample.
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Log in Nextcloud console as administrator, go to 【Admin】>【Additianal settings】>【Email server】, select SMTP for send mode
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-setsmpt001-websoft9.png)

3. Fill in the suitable smtp configuration
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-setsmpt002-websoft9.png)

4. Click "Send email" to test your SMTP settings
     

More SMTP Service (Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*.