# Apigateway helm chart

Before install/upgrade check [values.yaml](values.yaml) file first.

You need next domains:

`api-apigw.example.com` - domain for api-call

`cb-apigw.example.com` - domain for call-back

`apigw.example.com` - UI

Also use `*.apigw.example.com` for users api.

Require valid SSL certificate for these domains.

Apigateway work with Corezoid Single-Account, so we need to generate client_id and secret_id for apigatway in single-account

Example:

request

```
curl -v -XPOST https://account.example.com/api/1/json -d \
'{"type":"create", "obj":"oauth_client", "name":"apigw_client", "redirect_uri":"https://apigw.example.com/", "homepage":"https://apigw.example.com/", "description":"ApiGW prod", "logo":"https://some.logo.url.com", "notify_url":"https://some.notify.url.com", "full_name":"ApiGateway Prod" }' \
-H "Cookie:single_account_dev=1|12345|U8VoXw%3d%3d|12234567890123456|NW5ajk8PUcXzpJRZOj9WtpgVIjxflS2mHb1sj4Le"
```

response

```
{
	"result":"ok",
	"obj_type":"oauth_client",
	"obj_id":123,
	"owner_id":12345,
	"name":"ApiGateway Prod",
	"client_id":"SA_CLIENT_ID",
	"redirect_uri":"https://admin.dev.corezoid.com",
	"client_secret":"SA_CLIENT_SECRET",
	"create_time":1234567890,
	"homepage":"https://apigw.example.com/",
	"logo":"https://some.logo.url.com",
	"description":"ApiGW prod",
	"notify_url":"https://some.notify.url.com",
	"scope":"read"
}
```

Also need `admin_login` and `admin_secret` - api key of corezoid superadmin.
