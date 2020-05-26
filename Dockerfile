FROM hasura/graphql-engine:v1.0.0
# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_DEV_MODE=false
# Change $DATABASE_URL to your heroku postgres URL if you're not using
# the primary postgres instance in your app
CMD graphql-engine \
    --database-url postgresql://postgres:bragapoin@hello-hasura.coz1kemlydbm.ap-southeast-1.rds.amazonaws.com:5432/postgres \
    serve \
    --server-port 8080\
    --server-host 0.0.0.0\
    --admin-secret mysecretkey\
    # --jwt-secret `{"type": "RS512", "key": "-----BEGIN CERTIFICATE-----\nMIIDDTCCAfWgAwIBAgIJBt9Bps9NGGuXMA0GCSqGSIb3DQEBCwUAMCQxIjAgBgNV\nBAMTGWhlbGxvLWhhc3VyYTkyMC5hdXRoMC5jb20wHhcNMjAwNTE0MDcwNjU0WhcN\nMzQwMTIxMDcwNjU0WjAkMSIwIAYDVQQDExloZWxsby1oYXN1cmE5MjAuYXV0aDAu\nY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtf5eRNRlAVIxmrIw\nphrWXr/GarcVbWb5P4pnPOKEGh3JKs23kunMmP5Q/ROrfYtqIDdsdfgGO1t1hwsC\nmmsXLY2H4HL2FlgqQ0XPSWQtJ2hMeHl2R8xQ1OYP9Scubs4eoFafQMw6GCUALmA8\nCNozkpDIWhgBW15MmeLwa7k02+avwrEXZpGoCkz9KS4wknmEh+VD8EbcOJC6AOzr\nDPzhaFUCj02+aHHNKESmmR26oLuOIPgBuLEWr4SnQ2nelzauyEI6yGPJjoGsIm3C\n1AkmdgyLG5/FO4aUP8IxxdtbXPu/OWPEP8kga9y7GpseFCRCuJx60NZgc2hDGitZ\nn8wjhQIDAQABo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTQUBKAqmlE\nf72VRH5q3U+oRl1cxDAOBgNVHQ8BAf8EBAMCAoQwDQYJKoZIhvcNAQELBQADggEB\nAC8ypkOyNEWlwEmfjGjoVYc3sM3CC7iOFcNeN4B5LE0ne5l0h+cmPb1v+AIVi+Ma\n5PmkMBc5dpypPJGKlWbfm8a2KklXpPzAib7DjBjNwHN8Z3Ds0GqrlWsrNM/2aw7G\npWXQTj5DHufZA/Z4hBip9/KXWuQH4EyM50GPAgkeU8clFygUgBGd/8dXBnqEjyVQ\nRyvpfbeNFd9YxPATAba7pLIVLQZnj0PHSz28r9o7DiLckWWEdEX8raZXn5KCMILl\ns5U+apdnByhJ2/4z/EJ1g3mGZSc8ixFc86rSo5aSfigyWuXQFu54fDjdKK//FOuk\n2ag/On39yD8S7tDA2BIhNOw=\n-----END CERTIFICATE-----"}`


## Comment the command above and use the command below to
## enable an access-key and an auth-hook
## Recommended that you set the access-key as a environment variable in heroku
#CMD graphql-engine \
#    --database-url $DATABASE_URL \
#    serve \
#    --server-port $PORT \
#    --access-key XXXXX \
#    --auth-hook https://myapp.com/hasura-webhook 
#
