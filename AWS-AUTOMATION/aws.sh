#!/bin/bash
#
####################################################################################
#this script will list all the resources in the AWS account
#Author: Krishna
#date:24th july,2025 
#
# following are the supported aws services by the script
#1.EC2
#2.S3
#3.RDS
#4.dynamoDB
#5.lambda
#6.EBS
#7.ELB
#8.CLoud Front
#9.CLoud watch
#10.SNS
#11.SQS
#12.route53
#13.VPC
#14.Cloud formation
#15.IAM

#how to run this script : ./aws.sh <region-name> <service-name>
#
#
##################################################################################
#
#
#validation

if [ $# -ne 2 ]; then
	echo "Usage: $0 <region> <servicename>"
	exit 1
fi

aws_region=$1

aws_service=$2

#Checking awscli installed or not

if ! command -v aws &> /dev/null; then
	echo "AWS CLI is not installed.please install it and try again"
	exit 1
fi

# checking aws cli is configured or not

if [ ! -d ~/.aws ];then
	echo "AWS CLI is not configured. please configure it and try again."
	exit 1
fi

#execute AWS CLI command based on service given
#
case $aws_service in 
	  ec2)
        echo "Listing EC2 Instances in $aws_region"
        aws ec2 describe-instances --region $aws_region
        ;;
    rds)
        echo "Listing RDS Instances in $aws_region"
        aws rds describe-db-instances --region $aws_region
        ;;
    s3)
        echo "Listing S3 Buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
        ;;
    cloudfront)
        echo "Listing CloudFront Distributions in $aws_region"
        aws cloudfront list-distributions --region $aws_region
        ;;
    vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;
    iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;
    route5)
        echo "Listing Route53 Hosted Zones in $aws_region"
        aws route53 list-hosted-zones --region $aws_region
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region"
        aws cloudformation describe-stacks --region $aws_region
        ;;
    lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region
        ;;
    sqs)
        echo "Listing SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;
    ebs)
        echo "Listing EBS Volumes in $aws_region"
        aws ec2 describe-volumes --region $aws_region
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac

stty echo
