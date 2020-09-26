# Deployment

**Deployment is to copy the pre-installed Nextcloud package online to your Cloud Server**. For example, after the user subscribe Nextcloud on the Cloud Platform, the Platform will automatically copy the Nextcloud to the corresponding Cloud Server.

- If Nextcloud has been deployed, go to [Initial Installation](/stack-installation.md) to complete the operation.
- If not, first you need to deploy Nextcloud to your cloud server.

We offer two deployment schemes for Nextcloud and deployment results are the same.

## Deploy by Image

**Deploy by Image** means starting instance based on Nextcloud images. **Nextcloud Image** provide OS and software environment needed for Nextcloud.

For users with experience with cloud servers, deploy by image equates to "one-click deployment". 

Websoft9 published [Nextcloud image](https://apps.websoft9.com/nextcloud) on Cloud Platform, and there are three methods for your deployment:

* When **Create New Instance** , select the Nextcloud image as the system boot template.
* When you **Subscribe Nextcloud** on Marketplace, the system will promote you to create a new instance for this image in the meantime.
* When **Re-install OS** for you instance, you can replace the existing image with a Nextcloud image.

## Deploy by Script

**Deploy by Script** means running a script on your cloud instance to pull pre-installed package online to your instance and configure it at the same time.

Websoft9 provide the [Nextcloud ansible automation script](https://github.com/Websoft9/ansible-nextcloud) on Github. If you are familiar with Ansible, you can deploy the Nextcloud to the instance automatically.

## Comparison

No matter you **deploy by image** or **deploy by script**, the results are the same. So, what's the difference between the two deployment methods?

Suggest you read the document [Deploy by Image vs Deploy by Script](https://support.websoft9.com/docs/faq/bz-product.html#deployment-comparison)