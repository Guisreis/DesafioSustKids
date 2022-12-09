data "aws_iam_policy_document" "allow_access"{
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = ["*"]

    resources = [
      aws_s3_bucket.bucket-2.arn,
      "${aws_s3_bucket.bucket-2.arn}/*",
    ]
  }
}

resource "aws_s3_bucket_policy" "allow_access" {
  bucket = aws_s3_bucket.bucket-2.id
  policy = data.aws_iam_policy_document.allow_access.json
}


