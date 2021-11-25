#IAM Group
resource "aws_iam_group" "linux_admin_Group" {
  name = var.group_name
  path = "/"
}

#IAM Policy to Attach to group
resource "aws_iam_group_policy" "linux_admin_policy" {
  name  = "linux_admin_policy"
  group = aws_iam_group.linux_admin_Group.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:GetObjectVersionTagging",
                "s3:GetStorageLensConfigurationTagging",
                "s3:GetObjectAcl",
                "s3:GetBucketObjectLockConfiguration",
                "s3:GetIntelligentTieringConfiguration",
                "s3:GetObjectVersionAcl",
                "s3:GetBucketPolicyStatus",
                "s3:GetObjectRetention",
                "s3:GetBucketWebsite",
                "s3:GetJobTagging",
                "s3:GetMultiRegionAccessPoint",
                "s3:GetObjectLegalHold",
                "s3:GetBucketNotification",
                "s3:DescribeMultiRegionAccessPointOperation",
                "s3:GetReplicationConfiguration",
                "s3:GetObject",
                "s3:DescribeJob",
                "s3:GetAnalyticsConfiguration",
                "s3:GetObjectVersionForReplication",
                "s3:GetAccessPointForObjectLambda",
                "s3:GetStorageLensDashboard",
                "s3:GetLifecycleConfiguration",
                "s3:GetAccessPoint",
                "s3:GetInventoryConfiguration",
                "s3:GetBucketTagging",
                "s3:GetAccessPointPolicyForObjectLambda",
                "s3:GetBucketLogging",
                "s3:GetAccelerateConfiguration",
                "s3:GetBucketPolicy",
                "s3:GetEncryptionConfiguration",
                "s3:GetObjectVersionTorrent",
                "s3:GetBucketRequestPayment",
                "s3:GetAccessPointPolicyStatus",
                "s3:GetObjectTagging",
                "s3:GetMetricsConfiguration",
                "s3:GetBucketOwnershipControls",
                "s3:GetBucketPublicAccessBlock",
                "s3:GetMultiRegionAccessPointPolicyStatus",
                "s3:GetMultiRegionAccessPointPolicy",
                "s3:GetAccessPointPolicyStatusForObjectLambda",
                "s3:GetBucketVersioning",
                "s3:GetBucketAcl",
                "s3:GetAccessPointConfigurationForObjectLambda",
                "s3:GetObjectTorrent",
                "s3:GetStorageLensConfiguration",
                "s3:GetAccountPublicAccessBlock",
                "s3:GetBucketCORS",
                "s3:GetBucketLocation",
                "s3:GetAccessPointPolicy",
                "s3:GetObjectVersion"
            ],
            "Resource": "*"
        }
    ]
})
}




#IAM Users
resource "aws_iam_user" "user-1" {
  name = var.user_name
  path = "/"
  force_destroy = true
  tags = {
    tag-key = "user-1"
  }
}


#Attach IAM User to Group
resource "aws_iam_group_membership" "linux_admin_Group" {
  name = "linux_admin_Group-membership"

  users = [
    aws_iam_user.user-1.name
  ]

  group = aws_iam_group.linux_admin_Group.name
}

