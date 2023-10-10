#!/bin/bash

##############
# Author: Priyanshu Singh
# Date: 9th-Oct-2k23
#
# Version: v1
#
#This script will report the AWS resource usage
##############

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


#Debug mode
#set -x

echo "Print List of S3 buckets" > resourceTracker.txt
# list s3 buckets
aws s3 ls >> resourceTracker.txt

echo "Print List of EC2 buckets"
# list EC2 Instance
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt

echo "Print Lambda functions"
# list lambda
aws lambda list-functions >> resourceTracker.txt

echo "Print IAM Users"
# list IAM users
aws iam list-users >> resourceTracker.txt
