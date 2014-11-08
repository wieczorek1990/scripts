#!/bin/bash
id=929caa975f234985add58712dd3c868b
secret=481285f3bc074fc8a719a1a1d36230f6
auth=`echo -n "$id:$secret" | base64 | tr -d '\n'` 
echo $auth
token=`curl -H "Authorization: Basic $auth" -d grant_type=client_credentials https://accounts.spotify.com/api/token | jq -r '.access_token'`
curl -X GET "https://api.spotify.com/v1/users/wieczorek1990/starred" -H "Authorization: Bearer $token"
