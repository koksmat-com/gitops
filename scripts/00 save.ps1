$secret = @"
apiVersion: v1
kind: Secret
metadata:
  name: exchange
stringData:
  EXCHCERTIFICATEPASSWORD: $($ENV:EXCHCERTIFICATEPASSWORD)
  EXCHAPPID: $($ENV:EXCHAPPID)
  EXCHORGANIZATION: $($ENV:EXCHORGANIZATION)
  EXCHCERTIFICATE: $($ENV:EXCHCERTIFICATE)
  DATABASEADMIN: $($ENV:DATABASEADMIN)
  DATABASEPASSWORD: $($ENV:DATABASEPASSWORD)
  DATABASEURL: $($ENV:DATABASEURL)
"@

Out-File -Encoding utf8NoBOM "$($PSScriptRoot)/secret.yaml" -InputObject $secret