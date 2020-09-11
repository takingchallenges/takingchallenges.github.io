---
layout: post
title: Starting To Get Hands-On With AWS.
comments: true
---

To get familiar with the cloud environment, getting hands on with a prominent cloud service provider, I think of having some experience with Amazon Web Services (AWS). Although I have some familiarity with couple of AWS services like EC2 (Elastic Compute Cloud), S3 (Simple Storage Service) etc.

Starting off, first we need an AWS Account, for which I go for the student account as I am a Master student in Germany, So I just got the One year free account via AWS Educate. The best thing is they give you a One year free subsription for all the services available on free tier.

# Starting With EC2 (Elastic Compute Cloud)

**EC2**, stands for Elastic Cloud Compute. It simply provides a scalable computing capacity in the Amazon Web Services (AWS) cloud. Using EC2 you don't have to care about any configuration security, networking and managed storage. You can easily scale up or down your machines. 

- It's just a click away from you. One just have to chose type of machine, select the hardware specifications, memory consumption and security group according to the roles and policies defined accordingly. 

- It also provides Amazon Machine Images (AMIs), that package the bits you need for your server (including the operating system and additional software). Moreover you can create snapshots of your machines (Instances). 

- Secure logins and access via different user groups and secure key pairs. Furthermore Firewall options (different incoming and outgoing rules applied to the server using security groups).

- Public/Static IPv4 addresses available for all EC2 instances also termed as Elastic IP addresses.

- Many physical locations available for your resources, on different Regions and Availability Zones.


# Launching a basic EC2 Instance using AWS

<br>

**STEP-1** First of all, for launching a basic EC2 instance without any special configuration, one must have to follow these steps in order to launch a very basic EC2 instance. Go to AWS console and follow these simple steps.

![_config.yml]({{ site.baseurl }}/images/aws_console.png)
*AWS console page*


<br>

![_config.yml]({{ site.baseurl }}/images/launch_instance.png)
*Launch Instance start page*


<br>

**STEP-2** Next you have to chose AMI (Amazon Machine Image) for your instance. which is the OS you want to have in your isntance, You have options for Ubuntu, OpenSuse, RedHat etc.

<br>

![_config.yml]({{ site.baseurl }}/images/choose_ami_1.png)
*choosing Instance AMI*


<br>

**STEP-3** After that you have to chose the Instance type which is the speciic configuration for your machine which includes cores, CPU, memory and other things. If you are using free tier then you are eligible for **t2.micro option**.


<br>

![_config.yml]({{ site.baseurl }}/images/instance_type_2.png)
*choosing instance type*


<br>

**STEP-4** Providing Instance Details is the next step to be done, for launching the basic instance you must not change any fields on this page, It contains network, IP, subnet mask options available for networking. Moreover it also contains IAM role options to be applied on the instance you are launching. For monitoring you can chose cloudwatch option provided, which is obviously for paid users, not for free tier. 

<br>


**STEP-5** Upcoming step is to provide storgae options for the instance, which is the size of the memory and the hard drive options available,

<br>


**STEP-6** Next is to configure security groups for the instance you are launching.
<br>

![_config.yml]({{ site.baseurl }}/images/security_3.png)
*choosing security and access options*

<br>

- **Type** The protocol to open to network traffic. You can choose a common protocol, such as SSH (for a Linux instance), RDP (for a Windows instance), and HTTP and HTTPS to allow Internet traffic to reach your instance. 

- **Protocol** and **Port Ranges** options.

- **Source** is the other options, which is to specify from where you want to give access to your instance, let's say if I input my IP address in the source option, then the instance can only be accessed via my IP address. Same as if I input/select the option to all, it can be accessed from all over the world, which is obviously not a good security practice. I can also provide custom IP addresses for this option in which I can specify those IP addresses to whom I want to give the access to.


<br>

**FINAL STEP** Finally you can launch the instance and see your instances in the running instance panel. When you click the **Launch** button, it will prompt you for the key-pair option. which will give you two options

- **Create a New key pair :** This option will create a new key pair for you to access the instance, make sure to save your private key properly in order to access the instance via keys. 

- **Choose an Existing key pair :** This option will give you option to chose any exisitng key for you to access the instance, if you have already created the key.


<br>

# Accessing the EC2 Instance you have configured


You can easily access the Instance via SSH or putty client, example is shown below.

```shell
ssh -i /path_to_ssh_key ec2-user@ip_of_instance
```

Your instance is ready to go now, Enjoy !