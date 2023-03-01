# Terraform IAM RBAC Implementation for Four different set of users in an AWS Account

This Terraform project aims to create an IAM (Identity and Access Management) RBAC (Role-Based Access Control) implementation for four different set of users (Frontend Engineer, Backend Engineer, Data Enguneer, Site reliability Engineer)in an AWS account. The project will create the necessary resources such as IAM roles, policies, and permissions to enforce the desired access control for each category of users.

## Prerequisites
AWS account credentials
Terraform installed (version 0.13.0 or later)

## Getting Started

1. Clone this repository to your local machine.

2. Change into the cloned directory.

    '''
    cd terraform-test/
    '''

3. Initialize Terraform.

    '''
    terraform init
    '''

4. Modify the variables.tf file with your desired values for each variable.

5. Apply the Terraform configuration.

    '''
    terraform apply
    '''

7. Verify that the IAM roles, policies, and permissions were created correctly by checking the AWS Management Console or running the following command:

    '''
    terraform state list
    '''
## How it Works

This project uses Terraform to create IAM roles, policies, and permissions to enforce RBAC for four different set of users in an AWS account. The allowed_users variable in the variables.tf file is a map of the four set of users, where the key is the group name and the value is a list of strings with the AWS resource names that this team should have access to.

The project creates an IAM role for each set of users, and each role has a corresponding policy that grants the users access to the resources specified in the users variable. The project also creates a policy that restricts access to IAM resources, so that only authorized users can modify IAM roles and policies.


## Cleaning Up

To delete all the resources created by this Terraform project, run the following command:
terraform destroy

This will remove all the IAM roles, policies, and permissions that were created by this project.

## Conclusion
This Terraform project provides a simple and scalable solution for enforcing RBAC for multiple groups in an AWS account. With just a few modifications to the variables.tf file, you can customize the access control for your own team structure.