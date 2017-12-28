## Project Intent: Terra   
learning terraform for aws, openshift, and azure   
![terra](http://img1.wikia.nocookie.net/__cb20140219002655/finalfantasy/images/b/bd/FFVI_Terra_Branford_Menu_iOS.png)

### Install/Setup   
First, you should probably: [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)  

THEN! Ensure you've setup your AWS credentials in your bash profile:   

```bash
$ echo "export AWS_ACCESS_KEY=\"changeme\"" >> ~/.bashrc   
$ echo "export AWS_SECRET_ACCESS_KEY=\"changeme\"" >> ~/.bashrc   
$ echo "export AWS_DEFAULT_REGION=\"us-east-1\"" >> ~/.bashrc   
$ echo "export TF_VAR_aws_rds_dev_pw=\"changeme\"" >> ~/.bashrc
$ source ~/.bashrc   
```

Once this is complete, you can configure and initialize Terraform. ```terraform.tf``` contains the necesary configurations, so all that's needed it to run ```terraform init```!   
   

### Deployment with Locke (Packer)   

### Current State   
Infantile.   
Builds a dev db! Woo!   

### Terraform State Management   
Terraform state files are currently handled in an S3 bucket via backend config.   
www.terraform.io/docs/backends/types/s3.html   

s3 bucket: intent-terra-state   


### Support commands     
```bash
# STOP DB INSTANCE   
$ aws rds stop-db-instance --db-instance-identifier=""   

# START DB INSTANCE   
$ aws rds start-db-instance --db-instance-identifier=""   

# GET DB DETAILS
$ aws rds describe-db-instances   
```
