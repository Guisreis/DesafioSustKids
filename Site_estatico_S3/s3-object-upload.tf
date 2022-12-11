resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.bucket-2.bucket
  key          = "index.html"
  source       = "C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\index.html"
  content_type = "text/html"
  etag         = filemd5("C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\index.html")
  acl          = "public-read"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.bucket-2.bucket
  key          = "error.html"
  source       = "C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\error.html"
  content_type = "text/html"
  etag         = filemd5("C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\error.html")
  acl          = "public-read"
}

resource "aws_s3_object" "error_image" {
  for_each     = fileset("./", "*.jpg")
  key          = "error.jpg"
  bucket       = aws_s3_bucket.bucket-2.bucket
  content_type = "image/jpg"
  etag         = filemd5("C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\error.jpg")
  acl          = "public-read"
}

resource "aws_s3_object" "image" {
  for_each     = fileset("./", "*.jpg")
  bucket       = aws_s3_bucket.bucket-2.bucket
  key          = "image.jpg"
  source       = "./image.jpg"
  content_type = "image/jpg"
  etag         = filemd5("C:\\Users\\guilherme.sreis\\OneDrive - Darede Serviços de TI\\Documentos\\GitHub\\DesafioSustKids\\Site_estatico_S3\\image.jpg")
  acl          = "public-read"
}
